# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#create_from_url
    class UploadCreateFromURLParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute remote_url
      #   HTTP/HTTPS URL to fetch
      #
      #   @return [String]
      required :remote_url, String

      # @!attribute custom_id
      #
      #   @return [String, nil]
      optional :custom_id, String

      # @!attribute file_name
      #   Override file name
      #
      #   @return [String, nil]
      optional :file_name, String

      # @!attribute folder
      #   Destination folder path
      #
      #   @return [String, nil]
      optional :folder, String

      # @!attribute metadata
      #   JSON string of metadata object
      #
      #   @return [String, nil]
      optional :metadata, String

      # @!attribute random_prefix
      #   true/false to append random suffix
      #
      #   @return [String, nil]
      optional :random_prefix, String

      # @!attribute tags
      #   Tags array or comma-separated string
      #
      #   @return [Array<String>, String, nil]
      optional :tags, union: -> { Autorender::UploadCreateFromURLParams::Tags }

      # @!attribute webhook_url
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(remote_url:, custom_id: nil, file_name: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, webhook_url: nil, request_options: {})
      #   @param remote_url [String] HTTP/HTTPS URL to fetch
      #
      #   @param custom_id [String]
      #
      #   @param file_name [String] Override file name
      #
      #   @param folder [String] Destination folder path
      #
      #   @param metadata [String] JSON string of metadata object
      #
      #   @param random_prefix [String] true/false to append random suffix
      #
      #   @param tags [Array<String>, String] Tags array or comma-separated string
      #
      #   @param webhook_url [String]
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]

      # Tags array or comma-separated string
      module Tags
        extend Autorender::Internal::Type::Union

        variant -> { Autorender::Models::UploadCreateFromURLParams::Tags::StringArray }

        variant String

        # @!method self.variants
        #   @return [Array(Array<String>, String)]

        # @type [Autorender::Internal::Type::Converter]
        StringArray = Autorender::Internal::Type::ArrayOf[String]
      end
    end
  end
end
