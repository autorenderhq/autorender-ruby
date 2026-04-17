# frozen_string_literal: true

module Autorender
  module Models
    module Uploads
      # @see Autorender::Resources::Uploads::Multipart#start
      class MultipartStartParams < Autorender::Internal::Type::BaseModel
        extend Autorender::Internal::Type::RequestParameters::Converter
        include Autorender::Internal::Type::RequestParameters

        # @!attribute file_name
        #   Original filename (e.g., big-video.mp4)
        #
        #   @return [String]
        required :file_name, String

        # @!attribute format_
        #   MIME type (e.g., video/mp4, image/jpeg)
        #
        #   @return [String]
        required :format_, String, api_name: :format

        # @!attribute size
        #   Total file size in bytes
        #
        #   @return [Integer]
        required :size, Integer

        # @!attribute custom_id
        #
        #   @return [String, nil]
        optional :custom_id, String

        # @!attribute folder
        #   Destination folder path
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
        #   @return [Array<String>, nil]
        optional :tags, Autorender::Internal::Type::ArrayOf[String]

        # @!attribute ttl_seconds
        #   Presigned URL lifetime in seconds
        #
        #   @return [Integer, nil]
        optional :ttl_seconds, Integer

        # @!method initialize(file_name:, format_:, size:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, ttl_seconds: nil, request_options: {})
        #   @param file_name [String] Original filename (e.g., big-video.mp4)
        #
        #   @param format_ [String] MIME type (e.g., video/mp4, image/jpeg)
        #
        #   @param size [Integer] Total file size in bytes
        #
        #   @param custom_id [String]
        #
        #   @param folder [String] Destination folder path
        #
        #   @param metadata [Hash{Symbol=>Object}]
        #
        #   @param random_prefix [Boolean]
        #
        #   @param tags [Array<String>]
        #
        #   @param ttl_seconds [Integer] Presigned URL lifetime in seconds
        #
        #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
