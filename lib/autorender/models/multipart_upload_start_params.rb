# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::MultipartUploads#start
    class MultipartUploadStartParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute file_name
      #
      #   @return [String]
      required :file_name, String

      # @!attribute format_
      #
      #   @return [String]
      required :format_, String, api_name: :format

      # @!attribute size
      #
      #   @return [Integer]
      required :size, Integer

      # @!attribute custom_id
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute folder
      #
      #   @return [String, nil]
      optional :folder, String

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]

      # @!attribute random_prefix
      #
      #   @return [Boolean, nil]
      optional :random_prefix, Autorender::Internal::Type::Boolean

      # @!attribute tags
      #
      #   @return [Array<String>, String, nil]
      optional :tags, union: -> { Autorender::MultipartUploadStartParams::Tags }

      # @!attribute ttl_seconds
      #
      #   @return [Integer, nil]
      optional :ttl_seconds, Integer

      # @!method initialize(file_name:, format_:, size:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, ttl_seconds: nil, request_options: {})
      #   @param file_name [String]
      #   @param format_ [String]
      #   @param size [Integer]
      #   @param custom_id [String]
      #   @param folder [String]
      #   @param metadata [Hash{Symbol=>Object}]
      #   @param random_prefix [Boolean]
      #   @param tags [Array<String>, String]
      #   @param ttl_seconds [Integer]
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]

      module Tags
        extend Autorender::Internal::Type::Union

        variant -> { Autorender::Models::MultipartUploadStartParams::Tags::StringArray }

        variant String

        # @!method self.variants
        #   @return [Array(Array<String>, String)]

        # @type [Autorender::Internal::Type::Converter]
        StringArray = Autorender::Internal::Type::ArrayOf[String]
      end
    end
  end
end
