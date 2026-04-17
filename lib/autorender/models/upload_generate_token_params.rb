# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#generate_token
    class UploadGenerateTokenParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute file_name
      #   Filename for the upload (e.g., avatar.jpg)
      #
      #   @return [String]
      required :file_name, String

      # @!attribute allow_override
      #   Which policy fields the uploader may override
      #
      #   @return [Autorender::Models::UploadGenerateTokenParams::AllowOverride, nil]
      optional :allow_override, -> { Autorender::UploadGenerateTokenParams::AllowOverride }

      # @!attribute custom_id
      #   Custom identifier for the file
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute folder
      #   Destination folder path
      #
      #   @return [String, nil]
      optional :folder, String

      # @!attribute max_file_size
      #   Maximum allowed file size in bytes
      #
      #   @return [Integer, nil]
      optional :max_file_size, Integer

      # @!attribute metadata
      #   Custom metadata to attach
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]

      # @!attribute random_prefix
      #   Add a random prefix to the filename
      #
      #   @return [Boolean, nil]
      optional :random_prefix, Autorender::Internal::Type::Boolean

      # @!attribute tags
      #   Tags to apply to the uploaded file
      #
      #   @return [Array<String>, nil]
      optional :tags, Autorender::Internal::Type::ArrayOf[String]

      # @!attribute transform
      #   Transformation string applied on upload
      #
      #   @return [String, nil]
      optional :transform, String

      # @!attribute ttl_seconds
      #   Token lifetime in seconds (default: 300)
      #
      #   @return [Integer, nil]
      optional :ttl_seconds, Integer

      # @!method initialize(file_name:, allow_override: nil, custom_id: nil, folder: nil, max_file_size: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, ttl_seconds: nil, request_options: {})
      #   @param file_name [String] Filename for the upload (e.g., avatar.jpg)
      #
      #   @param allow_override [Autorender::Models::UploadGenerateTokenParams::AllowOverride] Which policy fields the uploader may override
      #
      #   @param custom_id [String] Custom identifier for the file
      #
      #   @param folder [String] Destination folder path
      #
      #   @param max_file_size [Integer] Maximum allowed file size in bytes
      #
      #   @param metadata [Hash{Symbol=>Object}] Custom metadata to attach
      #
      #   @param random_prefix [Boolean] Add a random prefix to the filename
      #
      #   @param tags [Array<String>] Tags to apply to the uploaded file
      #
      #   @param transform [String] Transformation string applied on upload
      #
      #   @param ttl_seconds [Integer] Token lifetime in seconds (default: 300)
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

        # @!attribute transform
        #
        #   @return [Boolean, nil]
        optional :transform, Autorender::Internal::Type::Boolean

        # @!method initialize(folder: nil, tags: nil, transform: nil)
        #   Which policy fields the uploader may override
        #
        #   @param folder [Boolean]
        #   @param tags [Boolean]
        #   @param transform [Boolean]
      end
    end
  end
end
