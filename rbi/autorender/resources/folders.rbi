# typed: strong

module Autorender
  module Resources
    class Folders
      # Create a folder under an optional parent.
      sig do
        params(
          name: String,
          parent_folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FolderCreateResponse)
      end
      def create(
        # Folder display name
        name:,
        # Parent folder number; omit or null for root
        parent_folder_no: nil,
        request_options: {}
      )
      end

      # List folders under an optional parent. Omit `parent_folder_no` to list
      # root-level folders.
      sig do
        params(
          parent_folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FolderListResponse)
      end
      def list(
        # Only return direct children of this folder (folder number)
        parent_folder_no: nil,
        request_options: {}
      )
      end

      # Delete a folder by folder number. No request body required.
      sig do
        params(
          folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FolderDeleteResponse)
      end
      def delete(folder_no, request_options: {})
      end

      # Rename a folder by `folder_no`.
      sig do
        params(
          folder_no: String,
          name: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Folder)
      end
      def rename(folder_no, name:, request_options: {})
      end

      # @api private
      sig { params(client: Autorender::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
