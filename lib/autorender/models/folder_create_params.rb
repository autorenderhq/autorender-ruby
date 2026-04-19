# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#create
    class FolderCreateParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute folder_name
      #   Folder name without slashes
      #
      #   @return [String]
      required :folder_name, String

      # @!attribute path
      #   Optional parent path, e.g. products/sku123
      #
      #   @return [String, nil]
      optional :path, String

      # @!method initialize(folder_name:, path: nil, request_options: {})
      #   @param folder_name [String] Folder name without slashes
      #
      #   @param path [String] Optional parent path, e.g. products/sku123
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
