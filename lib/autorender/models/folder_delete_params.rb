# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#delete
    class FolderDeleteParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute folder_no
      #
      #   @return [String]
      required :folder_no, String

      # @!method initialize(folder_no:, request_options: {})
      #   @param folder_no [String]
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
