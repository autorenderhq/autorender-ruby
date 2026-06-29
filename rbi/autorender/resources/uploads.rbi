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
          tags: Autorender::UploadCreateFromURLParams::Tags::Variants,
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
        # Tags array or comma-separated string
        tags: nil,
        webhook_url: nil,
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
