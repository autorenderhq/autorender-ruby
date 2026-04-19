# typed: strong

module Autorender
  module Resources
    # File management endpoints (API key required)
    class Files
      # Get file details
      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileRetrieveResponse)
      end
      def retrieve(file_no, request_options: {})
      end

      # Update file tags/metadata
      sig do
        params(
          file_no: String,
          add_tags: T::Array[String],
          metadata: T::Hash[Symbol, T.anything],
          remove_tags: T::Array[String],
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileUpdateResponse)
      end
      def update(
        file_no,
        # Tags to add to the existing set
        add_tags: nil,
        # Metadata to merge into existing metadata
        metadata: nil,
        # Tags to remove from the existing set
        remove_tags: nil,
        request_options: {}
      )
      end

      # List/search files with pagination, filtering, and sorting.
      sig do
        params(
          folder_no: String,
          limit: Integer,
          name: String,
          page: Integer,
          path: String,
          sort: Autorender::FileListParams::Sort::OrSymbol,
          tags: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileListResponse)
      end
      def list(
        # Exact folder number
        folder_no: nil,
        limit: nil,
        # Partial name match (case-insensitive)
        name: nil,
        page: nil,
        # Folder prefix (e.g. products/sku123/)
        path: nil,
        sort: nil,
        # Comma-separated tags
        tags: nil,
        request_options: {}
      )
      end

      # Delete file
      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).void
      end
      def delete(file_no, request_options: {})
      end

      # Rename file
      sig do
        params(
          file_no: String,
          name: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileRenameResponse)
      end
      def rename(
        file_no,
        # New file name without extension or path separators
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
