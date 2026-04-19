# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#rename
    class FolderRenameResponse < Autorender::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute folder_no
      #
      #   @return [String]
      required :folder_no, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute parent_folder_no
      #
      #   @return [String, nil]
      required :parent_folder_no, String, nil?: true

      # @!attribute path
      #
      #   @return [String]
      required :path, String

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      required :updated_at, Time, nil?: true

      # @!method initialize(id:, created_at:, folder_no:, name:, parent_folder_no:, path:, updated_at:)
      #   Renamed folder
      #
      #   @param id [String]
      #   @param created_at [Time]
      #   @param folder_no [String]
      #   @param name [String]
      #   @param parent_folder_no [String, nil]
      #   @param path [String]
      #   @param updated_at [Time, nil]
    end
  end
end
