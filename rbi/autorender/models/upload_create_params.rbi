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

      # File to upload.
      sig { returns(Autorender::Internal::FileInput) }
      attr_accessor :file

      # File name (e.g. product.jpg)
      sig { returns(String) }
      attr_accessor :file_name

      # Custom identifier
      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      # Optional folder path
      sig { returns(T.nilable(String)) }
      attr_reader :folder

      sig { params(folder: String).void }
      attr_writer :folder

      # JSON string of metadata
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

      # Transform string (w_300,h_300,c_crop,...)
      sig { returns(T.nilable(String)) }
      attr_reader :transform

      sig { params(transform: String).void }
      attr_writer :transform

      # URL to notify on success
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

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
        ).returns(T.attached_class)
      end
      def self.new(
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
