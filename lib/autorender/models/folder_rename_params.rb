# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#rename
    class FolderRenameParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute folder_no
      #
      #   @return [String]
      required :folder_no, String

      # @!attribute name
      #   New folder name without slashes
      #
      #   @return [String]
      required :name, String

      # @!method initialize(folder_no:, name:, request_options: {})
      #   @param folder_no [String]
      #
      #   @param name [String] New folder name without slashes
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
