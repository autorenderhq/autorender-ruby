# typed: strong

module Autorender
  module Models
    class UploadCreateFromURLParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Autorender::UploadCreateFromURLParams,
            Autorender::Internal::AnyHash
          )
        end

      # The HTTP or HTTPS URL of the image to download
      sig { returns(String) }
      attr_accessor :remote_url

      # Custom identifier for tracking the upload
      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      # Folder path where the file should be stored
      sig { returns(T.nilable(String)) }
      attr_reader :folder

      sig { params(folder: String).void }
      attr_writer :folder

      # JSON string containing custom metadata object
      sig { returns(T.nilable(String)) }
      attr_reader :metadata

      sig { params(metadata: String).void }
      attr_writer :metadata

      # Set to 'true' to generate a random suffix for the filename
      sig { returns(T.nilable(String)) }
      attr_reader :random_prefix

      sig { params(random_prefix: String).void }
      attr_writer :random_prefix

      # Comma-separated list of tags to apply to the file
      sig { returns(T.nilable(String)) }
      attr_reader :tags

      sig { params(tags: String).void }
      attr_writer :tags

      # Transformation string to apply during upload (e.g., w_800,h_600,c_crop)
      sig { returns(T.nilable(String)) }
      attr_reader :transform

      sig { params(transform: String).void }
      attr_writer :transform

      # URL to receive webhook notification when upload completes
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          remote_url: String,
          custom_id: String,
          folder: String,
          metadata: String,
          random_prefix: String,
          tags: String,
          transform: String,
          webhook_url: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The HTTP or HTTPS URL of the image to download
        remote_url:,
        # Custom identifier for tracking the upload
        custom_id: nil,
        # Folder path where the file should be stored
        folder: nil,
        # JSON string containing custom metadata object
        metadata: nil,
        # Set to 'true' to generate a random suffix for the filename
        random_prefix: nil,
        # Comma-separated list of tags to apply to the file
        tags: nil,
        # Transformation string to apply during upload (e.g., w_800,h_600,c_crop)
        transform: nil,
        # URL to receive webhook notification when upload completes
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            remote_url: String,
            custom_id: String,
            folder: String,
            metadata: String,
            random_prefix: String,
            tags: String,
            transform: String,
            webhook_url: String,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
