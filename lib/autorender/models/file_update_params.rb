# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#update
    class FileUpdateParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute file_no
      #
      #   @return [String]
      required :file_no, String

      # @!attribute add_tags
      #   Tags to add to the existing set
      #
      #   @return [Array<String>, nil]
      optional :add_tags, Autorender::Internal::Type::ArrayOf[String]

      # @!attribute metadata
      #   Metadata to merge into existing metadata
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]

      # @!attribute remove_tags
      #   Tags to remove from the existing set
      #
      #   @return [Array<String>, nil]
      optional :remove_tags, Autorender::Internal::Type::ArrayOf[String]

      # @!method initialize(file_no:, add_tags: nil, metadata: nil, remove_tags: nil, request_options: {})
      #   @param file_no [String]
      #
      #   @param add_tags [Array<String>] Tags to add to the existing set
      #
      #   @param metadata [Hash{Symbol=>Object}] Metadata to merge into existing metadata
      #
      #   @param remove_tags [Array<String>] Tags to remove from the existing set
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
