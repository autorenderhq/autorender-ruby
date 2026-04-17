# typed: strong

module Autorender
  module Resources
    # Upload files to your workspace
    class Uploads
      # Upload a file to your AutoRender workspace with optional transformations, tags,
      # and folder organization
      sig do
        params(
          file: Autorender::Internal::FileInput,
          file_name: String,
          custom_id: String,
          folder: String,
          metadata: String,
          random_prefix: String,
          tags: String,
          transform: String,
          webhook_url: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Upload)
      end
      def create(
        # The file to upload (binary data)
        file:,
        # File name for the uploaded file (e.g., my-image.jpg)
        file_name:,
        # Custom identifier for the file
        custom_id: nil,
        # Folder path where the file will be stored (e.g., products/sku123)
        folder: nil,
        # JSON string for custom metadata (e.g., {"productId": "123"})
        metadata: nil,
        # Set to "true" to add a random suffix to the filename
        random_prefix: nil,
        # Comma-separated tags (e.g., product,thumbnail)
        tags: nil,
        # Image transformation string (e.g., w_800,h_600,q_90)
        transform: nil,
        # URL to receive a webhook notification when the upload completes
        webhook_url: nil,
        request_options: {}
      )
      end

      # Download a file from a remote HTTP/HTTPS URL and store it in your AutoRender
      # workspace. Supports optional transformations and metadata.
      sig do
        params(
          remote_url: String,
          custom_id: String,
          file_name: String,
          folder: String,
          metadata: String,
          random_prefix: String,
          tags: String,
          transform: String,
          webhook_url: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Upload)
      end
      def create_from_url(
        # HTTP or HTTPS URL of the file to download
        remote_url:,
        # Custom identifier for the file
        custom_id: nil,
        # Override filename. Defaults to filename from URL.
        file_name: nil,
        # Destination folder path
        folder: nil,
        # JSON string of custom metadata
        metadata: nil,
        # Set to "true" to add a random suffix
        random_prefix: nil,
        # Comma-separated tags
        tags: nil,
        # Transformation string applied after download
        transform: nil,
        # URL to receive a webhook notification on completion
        webhook_url: nil,
        request_options: {}
      )
      end

      # Upload a file directly from a browser or mobile client using a token from POST
      # /api/v1/generate-token. Send raw file bytes as the request body. Filename and
      # upload policy are taken from the token.
      sig do
        params(
          token: String,
          body: Autorender::Internal::FileInput,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Upload)
      end
      def create_with_token(
        # Upload token from POST /api/v1/generate-token
        token,
        # Raw file bytes. Any file type accepted.
        body:,
        request_options: {}
      )
      end

      # Generate a short-lived signed token that allows a browser or mobile client to
      # upload directly to AutoRender without exposing your secret API key. The token
      # encodes upload policy (folder, tags, transforms, file size limit). No file
      # record is created until the token is used.
      sig do
        params(
          file_name: String,
          allow_override:
            Autorender::UploadGenerateTokenParams::AllowOverride::OrHash,
          custom_id: String,
          folder: String,
          max_file_size: Integer,
          metadata: T::Hash[Symbol, T.anything],
          random_prefix: T::Boolean,
          tags: T::Array[String],
          transform: String,
          ttl_seconds: Integer,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::UploadGenerateTokenResponse)
      end
      def generate_token(
        # Filename for the upload (e.g., avatar.jpg)
        file_name:,
        # Which policy fields the uploader may override
        allow_override: nil,
        # Custom identifier for the file
        custom_id: nil,
        # Destination folder path
        folder: nil,
        # Maximum allowed file size in bytes
        max_file_size: nil,
        # Custom metadata to attach
        metadata: nil,
        # Add a random prefix to the filename
        random_prefix: nil,
        # Tags to apply to the uploaded file
        tags: nil,
        # Transformation string applied on upload
        transform: nil,
        # Token lifetime in seconds (default: 300)
        ttl_seconds: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Autorender::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
