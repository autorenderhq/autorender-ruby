# typed: strong

module Autorender
  module Resources
    # Manage folder structure
    class Folders
      # Create a new folder. Optionally nest it under an existing folder by providing
      # parent_folder_no.
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
        # Parent folder number; omit for root level
        parent_folder_no: nil,
        request_options: {}
      )
      end

      # List folders in the workspace. Omit parent_folder_no to list root-level folders.
      sig do
        params(
          parent_folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FolderListResponse)
      end
      def list(
        # Return only direct children of this folder
        parent_folder_no: nil,
        request_options: {}
      )
      end

      # Delete a folder by its folder number.
      sig do
        params(
          folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::FolderDeleteResponse)
      end
      def delete(folder_no, request_options: {})
      end

      # Rename a folder by its folder number.
      sig do
        params(
          folder_no: String,
          name: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Folder)
      end
      def rename(
        folder_no,
        # New folder name
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
