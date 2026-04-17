# typed: strong

module Autorender
  module Resources
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
        # Folder path where the file will be stored (e.g., uploads/my-folder)
        folder: nil,
        # JSON string for custom metadata (e.g., {"key": "value"})
        metadata: nil,
        # Set to "true" to add a random suffix to filename
        random_prefix: nil,
        # Comma-separated tags (e.g., tag1,tag2,tag3)
        tags: nil,
        # Image transformation string (e.g., w_800,h_600,q_90)
        transform: nil,
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
