# typed: strong

module Autorender
  module Resources
    # Upload endpoints (API key required)
    class Uploads
      # Upload a file from your backend server using multipart/form-data.
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
        ).returns(Autorender::Models::UploadCreateResponse)
      end
      def create(
        # File to upload.
        file:,
        # File name (e.g. product.jpg)
        file_name:,
        # Custom identifier
        custom_id: nil,
        # Optional folder path
        folder: nil,
        # JSON string of metadata
        metadata: nil,
        # true/false to append random suffix
        random_prefix: nil,
        # Comma-separated tags
        tags: nil,
        # Transform string (w_300,h_300,c_crop,...)
        transform: nil,
        # URL to notify on success
        webhook_url: nil,
        request_options: {}
      )
      end

      # Download a file from a remote URL and store it in AutoRender.
      sig do
        params(
          remote_url: String,
          custom_id: String,
          file_name: String,
          folder: String,
          metadata: String,
          random_prefix: String,
          tags: String,
          webhook_url: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::UploadCreateFromURLResponse)
      end
      def create_from_url(
        # HTTP/HTTPS URL to fetch
        remote_url:,
        custom_id: nil,
        # Override file name
        file_name: nil,
        # Destination folder path
        folder: nil,
        # JSON string of metadata object
        metadata: nil,
        # true/false to append random suffix
        random_prefix: nil,
        # Comma-separated tags
        tags: nil,
        webhook_url: nil,
        request_options: {}
      )
      end

      # Generate a short-lived token for direct browser uploads. No file is created at
      # this stage.
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
          ttl_seconds: Integer,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::UploadGenerateTokenResponse)
      end
      def generate_token(
        # File name for the uploaded file (e.g., avatar.jpg)
        file_name:,
        allow_override: nil,
        custom_id: nil,
        # Destination folder path
        folder: nil,
        # Max file size in bytes
        max_file_size: nil,
        metadata: nil,
        random_prefix: nil,
        tags: nil,
        # Token lifetime in seconds. Defaults to 300.
        ttl_seconds: nil,
        request_options: {}
      )
      end

      # Upload a file directly from the browser using a token from /generate-token. Send
      # the raw file as binary in the request body.
      sig do
        params(
          token: String,
          body: Autorender::Internal::FileInput,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(Autorender::Models::UploadUploadWithTokenResponse)
      end
      def upload_with_token(
        token,
        # Raw file bytes. Accepts any file type (images, documents, videos, etc.).
        body:,
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
