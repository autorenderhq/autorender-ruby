# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#list
    class FolderListResponse < Autorender::Internal::Type::BaseModel
      # @!attribute folders
      #
      #   @return [Array<Autorender::Models::FolderListItem>, nil]
      optional :folders, -> { Autorender::Internal::Type::ArrayOf[Autorender::FolderListItem] }

      # @!method initialize(folders: nil)
      #   @param folders [Array<Autorender::Models::FolderListItem>]
    end
  end
end
