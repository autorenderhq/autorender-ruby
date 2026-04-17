# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#rename
    class Folder < Autorender::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute created_by
      #
      #   @return [String, nil]
      optional :created_by, String

      # @!attribute folder_no
      #
      #   @return [String, nil]
      optional :folder_no, String

      # @!attribute is_active
      #
      #   @return [Boolean, nil]
      optional :is_active, Autorender::Internal::Type::Boolean

      # @!attribute is_delete
      #
      #   @return [Boolean, nil]
      optional :is_delete, Autorender::Internal::Type::Boolean

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute parent_folder
      #
      #   @return [String, nil]
      optional :parent_folder, String, nil?: true

      # @!attribute path
      #
      #   @return [String, nil]
      optional :path, String

      # @!attribute source
      #
      #   @return [String, nil]
      optional :source, String

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute workspace
      #
      #   @return [Autorender::Models::Folder::Workspace, nil]
      optional :workspace, -> { Autorender::Folder::Workspace }

      # @!attribute workspace_id
      #
      #   @return [String, nil]
      optional :workspace_id, String

      # @!attribute workspace_no
      #
      #   @return [String, nil]
      optional :workspace_no, String

      # @!method initialize(id: nil, created_at: nil, created_by: nil, folder_no: nil, is_active: nil, is_delete: nil, name: nil, parent_folder: nil, path: nil, source: nil, updated_at: nil, workspace: nil, workspace_id: nil, workspace_no: nil)
      #   @param id [String]
      #   @param created_at [Time]
      #   @param created_by [String]
      #   @param folder_no [String]
      #   @param is_active [Boolean]
      #   @param is_delete [Boolean]
      #   @param name [String]
      #   @param parent_folder [String, nil]
      #   @param path [String]
      #   @param source [String]
      #   @param updated_at [Time]
      #   @param workspace [Autorender::Models::Folder::Workspace]
      #   @param workspace_id [String]
      #   @param workspace_no [String]

      # @see Autorender::Models::Folder#workspace
      class Workspace < Autorender::Internal::Type::BaseModel
        # @!attribute workspace_no
        #
        #   @return [String, nil]
        optional :workspace_no, String

        # @!method initialize(workspace_no: nil)
        #   @param workspace_no [String]
      end
    end
  end
end
