# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#create_from_url
    class UploadCreateFromURLParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute remote_url
      #   The HTTP or HTTPS URL of the image to download
      #
      #   @return [String]
      required :remote_url, String

      # @!attribute custom_id
      #   Custom identifier for tracking the upload
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute folder
      #   Folder path where the file should be stored
      #
      #   @return [String, nil]
      optional :folder, String

      # @!attribute metadata
      #   JSON string containing custom metadata object
      #
      #   @return [String, nil]
      optional :metadata, String

      # @!attribute random_prefix
      #   Set to 'true' to generate a random suffix for the filename
      #
      #   @return [String, nil]
      optional :random_prefix, String

      # @!attribute tags
      #   Comma-separated list of tags to apply to the file
      #
      #   @return [String, nil]
      optional :tags, String

      # @!attribute transform
      #   Transformation string to apply during upload (e.g., w_800,h_600,c_crop)
      #
      #   @return [String, nil]
      optional :transform, String

      # @!attribute webhook_url
      #   URL to receive webhook notification when upload completes
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(remote_url:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, webhook_url: nil, request_options: {})
      #   @param remote_url [String] The HTTP or HTTPS URL of the image to download
      #
      #   @param custom_id [String] Custom identifier for tracking the upload
      #
      #   @param folder [String] Folder path where the file should be stored
      #
      #   @param metadata [String] JSON string containing custom metadata object
      #
      #   @param random_prefix [String] Set to 'true' to generate a random suffix for the filename
      #
      #   @param tags [String] Comma-separated list of tags to apply to the file
      #
      #   @param transform [String] Transformation string to apply during upload (e.g., w_800,h_600,c_crop)
      #
      #   @param webhook_url [String] URL to receive webhook notification when upload completes
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
