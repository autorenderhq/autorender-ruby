# typed: strong

module Autorender
  module Resources
    # Folder management endpoints (API key required)
    class Folders
      # Create folder
      sig do
        params(
          folder_name: String,
          path: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FolderCreateResponse)
      end
      def create(
        # Folder name without slashes
        folder_name:,
        # Optional parent path, e.g. products/sku123
        path: nil,
        request_options: {}
      )
      end

      # Delete folder
      sig do
        params(
          folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).void
      end
      def delete(folder_no, request_options: {})
      end

      # Rename folder
      sig do
        params(
          folder_no: String,
          name: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FolderRenameResponse)
      end
      def rename(
        folder_no,
        # New folder name without slashes
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
