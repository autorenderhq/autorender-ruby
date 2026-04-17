# frozen_string_literal: true

module Autorender
  module Resources
    # Upload files to your workspace
    class Uploads
      # Large file uploads via multipart
      # @return [Autorender::Resources::Uploads::Multipart]
      attr_reader :multipart

      # Upload a file to your AutoRender workspace with optional transformations, tags,
      # and folder organization
      #
      # @overload create(file:, file_name:, custom_id: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, webhook_url: nil, request_options: {})
      #
      # @param file [Pathname, StringIO, IO, String, Autorender::FilePart] The file to upload (binary data)
      #
      # @param file_name [String] File name for the uploaded file (e.g., my-image.jpg)
      #
      # @param custom_id [String] Custom identifier for the file
      #
      # @param folder [String] Folder path where the file will be stored (e.g., products/sku123)
      #
      # @param metadata [String] JSON string for custom metadata (e.g., {"productId": "123"})
      #
      # @param random_prefix [String] Set to "true" to add a random suffix to the filename
      #
      # @param tags [String] Comma-separated tags (e.g., product,thumbnail)
      #
      # @param transform [String] Image transformation string (e.g., w_800,h_600,q_90)
      #
      # @param webhook_url [String] URL to receive a webhook notification when the upload completes
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::Upload]
      #
      # @see Autorender::Models::UploadCreateParams
      def create(params)
        parsed, options = Autorender::UploadCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/uploads",
          headers: {"content-type" => "multipart/form-data"},
          body: parsed,
          model: Autorender::Upload,
          options: options
        )
      end

      # Download a file from a remote HTTP/HTTPS URL and store it in your AutoRender
      # workspace. Supports optional transformations and metadata.
      #
      # @overload create_from_url(remote_url:, custom_id: nil, file_name: nil, folder: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, webhook_url: nil, request_options: {})
      #
      # @param remote_url [String] HTTP or HTTPS URL of the file to download
      #
      # @param custom_id [String] Custom identifier for the file
      #
      # @param file_name [String] Override filename. Defaults to filename from URL.
      #
      # @param folder [String] Destination folder path
      #
      # @param metadata [String] JSON string of custom metadata
      #
      # @param random_prefix [String] Set to "true" to add a random suffix
      #
      # @param tags [String] Comma-separated tags
      #
      # @param transform [String] Transformation string applied after download
      #
      # @param webhook_url [String] URL to receive a webhook notification on completion
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::Upload]
      #
      # @see Autorender::Models::UploadCreateFromURLParams
      def create_from_url(params)
        parsed, options = Autorender::UploadCreateFromURLParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/uploads/remote",
          body: parsed,
          model: Autorender::Upload,
          options: options
        )
      end

      # Upload a file directly from a browser or mobile client using a token from POST
      # /api/v1/generate-token. Send raw file bytes as the request body. Filename and
      # upload policy are taken from the token.
      #
      # @overload create_with_token(token, body:, request_options: {})
      #
      # @param token [String] Upload token from POST /api/v1/generate-token
      #
      # @param body [Pathname, StringIO, IO, String, Autorender::FilePart] Raw file bytes. Any file type accepted.
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::Upload]
      #
      # @see Autorender::Models::UploadCreateWithTokenParams
      def create_with_token(token, params)
        parsed, options = Autorender::UploadCreateWithTokenParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["api/v1/uploads/%1$s", token],
          headers: {"content-type" => "application/octet-stream"},
          body: parsed[:body],
          model: Autorender::Upload,
          options: options
        )
      end

      # Generate a short-lived signed token that allows a browser or mobile client to
      # upload directly to AutoRender without exposing your secret API key. The token
      # encodes upload policy (folder, tags, transforms, file size limit). No file
      # record is created until the token is used.
      #
      # @overload generate_token(file_name:, allow_override: nil, custom_id: nil, folder: nil, max_file_size: nil, metadata: nil, random_prefix: nil, tags: nil, transform: nil, ttl_seconds: nil, request_options: {})
      #
      # @param file_name [String] Filename for the upload (e.g., avatar.jpg)
      #
      # @param allow_override [Autorender::Models::UploadGenerateTokenParams::AllowOverride] Which policy fields the uploader may override
      #
      # @param custom_id [String] Custom identifier for the file
      #
      # @param folder [String] Destination folder path
      #
      # @param max_file_size [Integer] Maximum allowed file size in bytes
      #
      # @param metadata [Hash{Symbol=>Object}] Custom metadata to attach
      #
      # @param random_prefix [Boolean] Add a random prefix to the filename
      #
      # @param tags [Array<String>] Tags to apply to the uploaded file
      #
      # @param transform [String] Transformation string applied on upload
      #
      # @param ttl_seconds [Integer] Token lifetime in seconds (default: 300)
      #
      # @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Autorender::Models::UploadGenerateTokenResponse]
      #
      # @see Autorender::Models::UploadGenerateTokenParams
      def generate_token(params)
        parsed, options = Autorender::UploadGenerateTokenParams.dump_request(params)
        @client.request(
          method: :post,
          path: "api/v1/generate-token",
          body: parsed,
          model: Autorender::Models::UploadGenerateTokenResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Autorender::Client]
      def initialize(client:)
        @client = client
        @multipart = Autorender::Resources::Uploads::Multipart.new(client: client)
      end
    end
  end
end
