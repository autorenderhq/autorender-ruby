# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#generate_token
    class UploadGenerateTokenParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute file_name
      #   File name for the uploaded file (e.g., avatar.jpg)
      #
      #   @return [String]
      required :file_name, String

      # @!attribute allow_override
      #
      #   @return [Autorender::Models::UploadGenerateTokenParams::AllowOverride, nil]
      optional :allow_override, -> { Autorender::UploadGenerateTokenParams::AllowOverride }

      # @!attribute custom_id
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute folder
      #   Destination folder path
      #
      #   @return [String, nil]
      optional :folder, String

      # @!attribute max_file_size
      #   Max file size in bytes
      #
      #   @return [Integer, nil]
      optional :max_file_size, Integer

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
      #   @return [Array<String>, nil]
      optional :tags, Autorender::Internal::Type::ArrayOf[String]

      # @!attribute ttl_seconds
      #   Token lifetime in seconds. Defaults to 300.
      #
      #   @return [Integer, nil]
      optional :ttl_seconds, Integer

      # @!method initialize(file_name:, allow_override: nil, custom_id: nil, folder: nil, max_file_size: nil, metadata: nil, random_prefix: nil, tags: nil, ttl_seconds: nil, request_options: {})
      #   @param file_name [String] File name for the uploaded file (e.g., avatar.jpg)
      #
      #   @param allow_override [Autorender::Models::UploadGenerateTokenParams::AllowOverride]
      #
      #   @param custom_id [String]
      #
      #   @param folder [String] Destination folder path
      #
      #   @param max_file_size [Integer] Max file size in bytes
      #
      #   @param metadata [Hash{Symbol=>Object}]
      #
      #   @param random_prefix [Boolean]
      #
      #   @param tags [Array<String>]
      #
      #   @param ttl_seconds [Integer] Token lifetime in seconds. Defaults to 300.
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]

      class AllowOverride < Autorender::Internal::Type::BaseModel
        # @!attribute folder
        #
        #   @return [Boolean, nil]
        optional :folder, Autorender::Internal::Type::Boolean

        # @!attribute tags
        #
        #   @return [Boolean, nil]
        optional :tags, Autorender::Internal::Type::Boolean

        # @!method initialize(folder: nil, tags: nil)
        #   @param folder [Boolean]
        #   @param tags [Boolean]
      end
    end
  end
end
