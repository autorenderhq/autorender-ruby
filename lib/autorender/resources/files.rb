# frozen_string_literal: true

module Autorender
  module Resources
    # Manage files in your workspace
    class Files
      # Retrieve detailed information about a specific file by its file number.
      #
      # @overload retrieve(file_no, request_options: {})
      #
      # @param file_no [String] File number identifier
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

      # Update a file's tags and/or metadata. Tags are merged — add_tags appends,
      # remove_tags removes. Metadata is merged with existing values.
      #
      # @overload update(file_no, add_tags: nil, metadata: nil, remove_tags: nil, request_options: {})
      #
      # @param file_no [String] File number identifier
      #
      # @param add_tags [Array<String>] Tags to add
      #
      # @param metadata [Hash{Symbol=>Object}] Metadata to merge
      #
      # @param remove_tags [Array<String>] Tags to remove
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FileUpdateResponse]
      #
      # @see Autorender::Models::FileUpdateParams
      def update(file_no, params = {})
        parsed, options = Autorender::FileUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["api/v1/files/%1$s", file_no],
          body: parsed,
          model: Autorender::Models::FileUpdateResponse,
          options: options
        )
      end

      # Paginated list of files in the workspace. Filter by folder, path prefix, name,
      # or tags. Sort by various fields.
      #
      # @overload list(folder_no: nil, limit: nil, name: nil, page: nil, path: nil, sort_field: nil, sort_order: nil, tags: nil, request_options: {})
      #
      # @param folder_no [String] Filter to files in this folder
      #
      # @param limit [Integer] Items per page
      #
      # @param name [String] Partial filename match (case-insensitive)
      #
      # @param page [Integer] Page number (1-based)
      #
      # @param path [String] Filter by path prefix (e.g., products/sku123/)
      #
      # @param sort_field [Symbol, Autorender::Models::FileListParams::SortField] Field to sort by
      #
      # @param sort_order [Symbol, Autorender::Models::FileListParams::SortOrder] Sort direction
      #
      # @param tags [String] Comma-separated tags to filter by
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

      # Permanently delete a file from the workspace.
      #
      # @overload delete(file_no, request_options: {})
      #
      # @param file_no [String] File number identifier
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

      # Rename a file. The server preserves the file extension (e.g., supplying
      # "product" renames to "product.jpg").
      #
      # @overload rename(file_no, name:, request_options: {})
      #
      # @param file_no [String] File number identifier
      #
      # @param name [String] New base name; extension is preserved by the server
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
