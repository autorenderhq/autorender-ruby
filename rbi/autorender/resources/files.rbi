# typed: strong

module Autorender
  module Resources
    class Files
      # Retrieve detailed information about a file by numeric file id (`file_no`).
      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::FileObject)
      end
      def retrieve(
        # File number (numeric id in URL)
        file_no,
        request_options: {}
      )
      end

      # Paginated list of files in the workspace. Filter by folder, sort by field and
      # order, and page through results.
      sig do
        params(
          folder_no: String,
          limit: Integer,
          name: String,
          page: Integer,
          path: String,
          sort_field: Autorender::FileListParams::SortField::OrSymbol,
          sort_order: Autorender::FileListParams::SortOrder::OrSymbol,
          tags: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileListResponse)
      end
      def list(
        # Restrict results to files in this folder (folder number)
        folder_no: nil,
        # Items per page
        limit: nil,
        # Filter by filename (partial match, if supported)
        name: nil,
        # Page number (1-based)
        page: nil,
        # Filter by path prefix (if supported)
        path: nil,
        # Field to sort by
        sort_field: nil,
        # Sort direction
        sort_order: nil,
        # Comma-separated tags (if supported)
        tags: nil,
        request_options: {}
      )
      end

      # Permanently delete a file. No request body is required.
      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileDeleteResponse)
      end
      def delete(
        # File number to delete
        file_no,
        request_options: {}
      )
      end

      # Rename a file. The API may preserve or normalize the file extension (e.g. `demo`
      # → `demo.png`).
      sig do
        params(
          file_no: String,
          name: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileRenameResponse)
      end
      def rename(
        # File number
        file_no,
        # New base name; extension may be applied by the server
        name:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Autorender::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
