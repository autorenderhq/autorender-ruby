# typed: strong

module Autorender
  module Models
    class UploadCreateParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::UploadCreateParams, Autorender::Internal::AnyHash)
        end

      # The file to upload (binary data)
      sig { returns(Autorender::Internal::FileInput) }
      attr_accessor :file

      # File name for the uploaded file (e.g., my-image.jpg)
      sig { returns(String) }
      attr_accessor :file_name

      # Custom identifier for the file
      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      # Folder path where the file will be stored (e.g., uploads/my-folder)
      sig { returns(T.nilable(String)) }
      attr_reader :folder

      sig { params(folder: String).void }
      attr_writer :folder

      # JSON string for custom metadata (e.g., {"key": "value"})
      sig { returns(T.nilable(String)) }
      attr_reader :metadata

      sig { params(metadata: String).void }
      attr_writer :metadata

      # Set to "true" to add a random suffix to filename
      sig { returns(T.nilable(String)) }
      attr_reader :random_prefix

      sig { params(random_prefix: String).void }
      attr_writer :random_prefix

      # Comma-separated tags (e.g., tag1,tag2,tag3)
      sig { returns(T.nilable(String)) }
      attr_reader :tags

      sig { params(tags: String).void }
      attr_writer :tags

      # Image transformation string (e.g., w_800,h_600,q_90)
      sig { returns(T.nilable(String)) }
      attr_reader :transform

      sig { params(transform: String).void }
      attr_writer :transform

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            file: Autorender::Internal::FileInput,
            file_name: String,
            custom_id: String,
            folder: String,
            metadata: String,
            random_prefix: String,
            tags: String,
            transform: String,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
