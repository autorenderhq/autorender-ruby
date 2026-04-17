# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#create
    class UploadCreateParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute file
      #   The file to upload (binary data)
      #
      #   @return [Pathname, StringIO, IO, String, Autorender::FilePart]
      required :file, Autorender::Internal::Type::FileInput

      # @!attribute file_name
      #   File name for the uploaded file (e.g., my-image.jpg)
      #
      #   @return [String]
      required :file_name, String

      # @!attribute custom_id
      #   Custom identifier for the file
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute folder
      #   Folder path where the file will be stored (e.g., products/sku123)
      #
      #   @return [String, nil]
      optional :folder, String

      # @!attribute metadata
      #   JSON string for custom metadata (e.g., {"productId": "123"})
      #
      #   @return [String, nil]
      optional :metadata, String

      # @!attribute random_prefix
      #   Set to "true" to add a random suffix to the filename
      #
      #   @return [String, nil]
      optional :random_prefix, String

      # @!attribute tags
      #   Comma-separated tags (e.g., product,thumbnail)
      #
      #   @return [String, nil]
      optional :tags, String

      # @!attribute transform
      #   Image transformation string (e.g., w_800,h_600,q_90)
      #
      #   @return [String, nil]
      optional :transform, String

      # @!attribute webhook_url
      #   URL to receive a webhook notification when the upload completes
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(file:, file_name:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, webhook_url: nil, request_options: {})
      #   @param file [Pathname, StringIO, IO, String, Autorender::FilePart] The file to upload (binary data)
      #
      #   @param file_name [String] File name for the uploaded file (e.g., my-image.jpg)
      #
      #   @param custom_id [String] Custom identifier for the file
      #
      #   @param folder [String] Folder path where the file will be stored (e.g., products/sku123)
      #
      #   @param metadata [String] JSON string for custom metadata (e.g., {"productId": "123"})
      #
      #   @param random_prefix [String] Set to "true" to add a random suffix to the filename
      #
      #   @param tags [String] Comma-separated tags (e.g., product,thumbnail)
      #
      #   @param transform [String] Image transformation string (e.g., w_800,h_600,q_90)
      #
      #   @param webhook_url [String] URL to receive a webhook notification when the upload completes
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
