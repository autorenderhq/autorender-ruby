# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#create
    class UploadCreateParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute file
      #   File to upload.
      #
      #   @return [Pathname, StringIO, IO, String, Autorender::FilePart]
      required :file, Autorender::Internal::Type::FileInput

      # @!attribute file_name
      #   File name (e.g. product.jpg)
      #
      #   @return [String]
      required :file_name, String

      # @!attribute custom_id
      #   Custom identifier
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute folder
      #   Optional folder path
      #
      #   @return [String, nil]
      optional :folder, String

      # @!attribute metadata
      #   JSON string of metadata
      #
      #   @return [String, nil]
      optional :metadata, String

      # @!attribute random_prefix
      #   true/false to append random suffix
      #
      #   @return [String, nil]
      optional :random_prefix, String

      # @!attribute tags
      #   Comma-separated tags
      #
      #   @return [String, nil]
      optional :tags, String

      # @!attribute transform
      #   Transform string (w_300,h_300,c_crop,...)
      #
      #   @return [String, nil]
      optional :transform, String

      # @!attribute webhook_url
      #   URL to notify on success
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(file:, file_name:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, webhook_url: nil, request_options: {})
      #   @param file [Pathname, StringIO, IO, String, Autorender::FilePart] File to upload.
      #
      #   @param file_name [String] File name (e.g. product.jpg)
      #
      #   @param custom_id [String] Custom identifier
      #
      #   @param folder [String] Optional folder path
      #
      #   @param metadata [String] JSON string of metadata
      #
      #   @param random_prefix [String] true/false to append random suffix
      #
      #   @param tags [String] Comma-separated tags
      #
      #   @param transform [String] Transform string (w_300,h_300,c_crop,...)
      #
      #   @param webhook_url [String] URL to notify on success
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
