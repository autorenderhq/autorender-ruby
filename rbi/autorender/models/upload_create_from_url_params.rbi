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

      # HTTP/HTTPS URL to fetch
      sig { returns(String) }
      attr_accessor :remote_url

      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      # Override file name
      sig { returns(T.nilable(String)) }
      attr_reader :file_name

      sig { params(file_name: String).void }
      attr_writer :file_name

      # Destination folder path
      sig { returns(T.nilable(String)) }
      attr_reader :folder

      sig { params(folder: String).void }
      attr_writer :folder

      # JSON string of metadata object
      sig { returns(T.nilable(String)) }
      attr_reader :metadata

      sig { params(metadata: String).void }
      attr_writer :metadata

      # true/false to append random suffix
      sig { returns(T.nilable(String)) }
      attr_reader :random_prefix

      sig { params(random_prefix: String).void }
      attr_writer :random_prefix

      # Comma-separated tags
      sig { returns(T.nilable(String)) }
      attr_reader :tags

      sig { params(tags: String).void }
      attr_writer :tags

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
          webhook_url: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
