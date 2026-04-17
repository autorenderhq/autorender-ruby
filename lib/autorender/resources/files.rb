# frozen_string_literal: true

module Autorender
  module Resources
    class Files
      # Retrieve detailed information about a file by numeric file id (`file_no`).
      #
      # @overload retrieve(file_no, request_options: {})
      #
      # @param file_no [String] File number (numeric id in URL)
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FileObject]
      #
      # @see Autorender::Models::FileRetrieveParams
      def retrieve(file_no, params = {})
        @client.request(
          method: :get,
          path: ["api/v1/files/%1$s", file_no],
          model: Autorender::FileObject,
          options: params[:request_options]
        )
      end

      # Paginated list of files in the workspace. Filter by folder, sort by field and
      # order, and page through results.
      #
      # @overload list(folder_no: nil, limit: nil, name: nil, page: nil, path: nil, sort_field: nil, sort_order: nil, tags: nil, request_options: {})
      #
      # @param folder_no [String] Restrict results to files in this folder (folder number)
      #
      # @param limit [Integer] Items per page
      #
      # @param name [String] Filter by filename (partial match, if supported)
      #
      # @param page [Integer] Page number (1-based)
      #
      # @param path [String] Filter by path prefix (if supported)
      #
      # @param sort_field [Symbol, Autorender::Models::FileListParams::SortField] Field to sort by
      #
      # @param sort_order [Symbol, Autorender::Models::FileListParams::SortOrder] Sort direction
      #
      # @param tags [String] Comma-separated tags (if supported)
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FileListResponse]
      #
      # @see Autorender::Models::FileListParams
      def list(params = {})
        parsed, options = Autorender::FileListParams.dump_request(params)
        query = Autorender::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "api/v1/files",
          query: query,
          model: Autorender::Models::FileListResponse,
          options: options
        )
      end

      # Permanently delete a file. No request body is required.
      #
      # @overload delete(file_no, request_options: {})
      #
      # @param file_no [String] File number to delete
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FileDeleteResponse]
      #
      # @see Autorender::Models::FileDeleteParams
      def delete(file_no, params = {})
        @client.request(
          method: :delete,
          path: ["api/v1/files/%1$s", file_no],
          model: Autorender::Models::FileDeleteResponse,
          options: params[:request_options]
        )
      end

      # Rename a file. The API may preserve or normalize the file extension (e.g. `demo`
      # → `demo.png`).
      #
      # @overload rename(file_no, name:, request_options: {})
      #
      # @param file_no [String] File number
      #
      # @param name [String] New base name; extension may be applied by the server
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FileRenameResponse]
      #
      # @see Autorender::Models::FileRenameParams
      def rename(file_no, params)
        parsed, options = Autorender::FileRenameParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v1/files/%1$s/rename", file_no],
          body: parsed,
          model: Autorender::Models::FileRenameResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Autorender::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
