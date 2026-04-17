# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#create_from_url
    class UploadCreateFromURLParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute remote_url
      #   HTTP or HTTPS URL of the file to download
      #
      #   @return [String]
      required :remote_url, String

      # @!attribute custom_id
      #   Custom identifier for the file
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute file_name
      #   Override filename. Defaults to filename from URL.
      #
      #   @return [String, nil]
      optional :file_name, String

      # @!attribute folder
      #   Destination folder path
      #
      #   @return [String, nil]
      optional :folder, String

      # @!attribute metadata
      #   JSON string of custom metadata
      #
      #   @return [String, nil]
      optional :metadata, String

      # @!attribute random_prefix
      #   Set to "true" to add a random suffix
      #
      #   @return [String, nil]
      optional :random_prefix, String

      # @!attribute tags
      #   Comma-separated tags
      #
      #   @return [String, nil]
      optional :tags, String

      # @!attribute transform
      #   Transformation string applied after download
      #
      #   @return [String, nil]
      optional :transform, String

      # @!attribute webhook_url
      #   URL to receive a webhook notification on completion
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(remote_url:, custom_id: nil, file_name: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, webhook_url: nil, request_options: {})
      #   @param remote_url [String] HTTP or HTTPS URL of the file to download
      #
      #   @param custom_id [String] Custom identifier for the file
      #
      #   @param file_name [String] Override filename. Defaults to filename from URL.
      #
      #   @param folder [String] Destination folder path
      #
      #   @param metadata [String] JSON string of custom metadata
      #
      #   @param random_prefix [String] Set to "true" to add a random suffix
      #
      #   @param tags [String] Comma-separated tags
      #
      #   @param transform [String] Transformation string applied after download
      #
      #   @param webhook_url [String] URL to receive a webhook notification on completion
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
