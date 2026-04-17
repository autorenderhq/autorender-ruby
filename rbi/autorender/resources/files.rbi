# typed: strong

module Autorender
  module Resources
    # Manage files in your workspace
    class Files
      # Retrieve detailed information about a specific file by its file number.
      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::FileObject)
      end
      def retrieve(
        # File number identifier
        file_no,
        request_options: {}
      )
      end

      # Update a file's tags and/or metadata. Tags are merged — add_tags appends,
      # remove_tags removes. Metadata is merged with existing values.
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
        # File number identifier
        file_no,
        # Tags to add
        add_tags: nil,
        # Metadata to merge
        metadata: nil,
        # Tags to remove
        remove_tags: nil,
        request_options: {}
      )
      end

      # Paginated list of files in the workspace. Filter by folder, path prefix, name,
      # or tags. Sort by various fields.
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
        # Filter to files in this folder
        folder_no: nil,
        # Items per page
        limit: nil,
        # Partial filename match (case-insensitive)
        name: nil,
        # Page number (1-based)
        page: nil,
        # Filter by path prefix (e.g., products/sku123/)
        path: nil,
        # Field to sort by
        sort_field: nil,
        # Sort direction
        sort_order: nil,
        # Comma-separated tags to filter by
        tags: nil,
        request_options: {}
      )
      end

      # Permanently delete a file from the workspace.
      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileDeleteResponse)
      end
      def delete(
        # File number identifier
        file_no,
        request_options: {}
      )
      end

      # Rename a file. The server preserves the file extension (e.g., supplying
      # "product" renames to "product.jpg").
      sig do
        params(
          file_no: String,
          name: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FileRenameResponse)
      end
      def rename(
        # File number identifier
        file_no,
        # New base name; extension is preserved by the server
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
