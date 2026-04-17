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

      # HTTP or HTTPS URL of the file to download
      sig { returns(String) }
      attr_accessor :remote_url

      # Custom identifier for the file
      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      # Override filename. Defaults to filename from URL.
      sig { returns(T.nilable(String)) }
      attr_reader :file_name

      sig { params(file_name: String).void }
      attr_writer :file_name

      # Destination folder path
      sig { returns(T.nilable(String)) }
      attr_reader :folder

      sig { params(folder: String).void }
      attr_writer :folder

      # JSON string of custom metadata
      sig { returns(T.nilable(String)) }
      attr_reader :metadata

      sig { params(metadata: String).void }
      attr_writer :metadata

      # Set to "true" to add a random suffix
      sig { returns(T.nilable(String)) }
      attr_reader :random_prefix

      sig { params(random_prefix: String).void }
      attr_writer :random_prefix

      # Comma-separated tags
      sig { returns(T.nilable(String)) }
      attr_reader :tags

      sig { params(tags: String).void }
      attr_writer :tags

      # Transformation string applied after download
      sig { returns(T.nilable(String)) }
      attr_reader :transform

      sig { params(transform: String).void }
      attr_writer :transform

      # URL to receive a webhook notification on completion
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            remote_url: String,
            custom_id: String,
            file_name: String,
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
