# frozen_string_literal: true

module Autorender
  module Resources
    # File management endpoints (API key required)
    class Files
      # Get file details
      #
      # @overload retrieve(file_no, request_options: {})
      #
      # @param file_no [String]
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::FileRetrieveResponse]
      #
      # @see Autorender::Models::FileRetrieveParams
      def retrieve(file_no, params = {})
        @client.request(
          method: :get,
          path: ["api/v1/files/%1$s", file_no],
          model: Autorender::Models::FileRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update file tags/metadata
      #
      # @overload update(file_no, add_tags: nil, metadata: nil, remove_tags: nil, request_options: {})
      #
      # @param file_no [String]
      #
      # @param add_tags [Array<String>] Tags to add to the existing set
      #
      # @param metadata [Hash{Symbol=>Object}] Metadata to merge into existing metadata
      #
      # @param remove_tags [Array<String>] Tags to remove from the existing set
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

      # List/search files with pagination, filtering, and sorting.
      #
      # @overload list(folder_no: nil, limit: nil, name: nil, page: nil, path: nil, sort: nil, tags: nil, request_options: {})
      #
      # @param folder_no [String] Exact folder number
      #
      # @param limit [Integer]
      #
      # @param name [String] Partial name match (case-insensitive)
      #
      # @param page [Integer]
      #
      # @param path [String] Folder prefix (e.g. products/sku123/)
      #
      # @param sort [Symbol, Autorender::Models::FileListParams::Sort]
      #
      # @param tags [String] Comma-separated tags
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
          query: query.transform_keys(folder_no: "folderNo"),
          model: Autorender::Models::FileListResponse,
          options: options
        )
      end

      # Delete file
      #
      # @overload delete(file_no, request_options: {})
      #
      # @param file_no [String]
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Autorender::Models::FileDeleteParams
      def delete(file_no, params = {})
        @client.request(
          method: :delete,
          path: ["api/v1/files/%1$s", file_no],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Rename file
      #
      # @overload rename(file_no, name:, request_options: {})
      #
      # @param file_no [String]
      #
      # @param name [String] New file name without extension or path separators
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
