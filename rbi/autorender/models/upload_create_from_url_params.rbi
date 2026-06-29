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

      # Tags array or comma-separated string
      sig do
        returns(
          T.nilable(Autorender::UploadCreateFromURLParams::Tags::Variants)
        )
      end
      attr_reader :tags

      sig do
        params(tags: Autorender::UploadCreateFromURLParams::Tags::Variants).void
      end
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
          tags: Autorender::UploadCreateFromURLParams::Tags::Variants,
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
        # Tags array or comma-separated string
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
            tags: Autorender::UploadCreateFromURLParams::Tags::Variants,
            webhook_url: String,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Tags array or comma-separated string
      module Tags
        extend Autorender::Internal::Type::Union

        Variants = T.type_alias { T.any(T::Array[String], String) }

        sig do
          override.returns(
            T::Array[Autorender::UploadCreateFromURLParams::Tags::Variants]
          )
        end
        def self.variants
        end

        StringArray =
          T.let(
            Autorender::Internal::Type::ArrayOf[String],
            Autorender::Internal::Type::Converter
          )
      end
    end
  end
end
