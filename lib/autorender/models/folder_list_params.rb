# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#list
    class FolderListParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute parent_folder_no
      #   Only return direct children of this folder (folder number)
      #
      #   @return [String, nil]
      optional :parent_folder_no, String

      # @!method initialize(parent_folder_no: nil, request_options: {})
      #   @param parent_folder_no [String] Only return direct children of this folder (folder number)
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
