# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#create
    class FolderCreateResponse < Autorender::Internal::Type::BaseModel
      # @!attribute folder_no
      #
      #   @return [String, nil]
      optional :folder_no, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(folder_no: nil, name: nil)
      #   @param folder_no [String]
      #   @param name [String]
    end
  end
end
