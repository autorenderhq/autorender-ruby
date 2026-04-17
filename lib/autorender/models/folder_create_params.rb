# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#create
    class FolderCreateParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute name
      #   Folder display name
      #
      #   @return [String]
      required :name, String

      # @!attribute parent_folder_no
      #   Parent folder number; omit for root level
      #
      #   @return [String, nil]
      optional :parent_folder_no, String

      # @!method initialize(name:, parent_folder_no: nil, request_options: {})
      #   @param name [String] Folder display name
      #
      #   @param parent_folder_no [String] Parent folder number; omit for root level
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
