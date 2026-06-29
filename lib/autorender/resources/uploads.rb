# frozen_string_literal: true

module Autorender
  module Resources
    # Upload endpoints (API key required)
    class Uploads
      # Upload a file from your backend server using multipart/form-data.
      #
      # @overload create(file:, file_name:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, webhook_url: nil, request_options: {})
      #
      # @param file [Pathname, StringIO, IO, String, Autorender::FilePart] File to upload.
      #
      # @param file_name [String] File name (e.g. product.jpg)
      #
      # @param custom_id [String] Custom identifier
      #
      # @param folder [String] Optional folder path
      #
      # @param metadata [String] JSON string of metadata
      #
      # @param random_prefix [String] true/false to append random suffix
      #
      # @param tags [String] Comma-separated tags
      #
      # @param transform [String] Transform string (w_300,h_300,c_crop,...)
      #
      # @param webhook_url [String] URL to notify on success
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::UploadCreateResponse]
      #
      # @see Autorender::Models::UploadCreateParams
      def create(params)
        parsed, options = Autorender::UploadCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/uploads",
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: Autorender::Models::UploadCreateResponse,
          options: options
        )
      end

      # Download a file from a remote URL and store it in AutoRender.
      #
      # @overload create_from_url(remote_url:, custom_id: nil, file_name: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, webhook_url: nil, request_options: {})
      #
      # @param remote_url [String] HTTP/HTTPS URL to fetch
      #
      # @param custom_id [String]
      #
      # @param file_name [String] Override file name
      #
      # @param folder [String] Destination folder path
      #
      # @param metadata [String] JSON string of metadata object
      #
      # @param random_prefix [String] true/false to append random suffix
      #
      # @param tags [Array<String>, String] Tags array or comma-separated string
      #
      # @param webhook_url [String]
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::UploadCreateFromURLResponse]
      #
      # @see Autorender::Models::UploadCreateFromURLParams
      def create_from_url(params)
        parsed, options = Autorender::UploadCreateFromURLParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/uploads/remote",
          body: parsed,
          model: Autorender::Models::UploadCreateFromURLResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Autorender::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
