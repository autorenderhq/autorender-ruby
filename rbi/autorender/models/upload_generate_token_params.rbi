# typed: strong

module Autorender
  module Models
    class UploadGenerateTokenParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Autorender::UploadGenerateTokenParams,
            Autorender::Internal::AnyHash
          )
        end

      # Filename for the upload (e.g., avatar.jpg)
      sig { returns(String) }
      attr_accessor :file_name

      # Which policy fields the uploader may override
      sig do
        returns(T.nilable(Autorender::UploadGenerateTokenParams::AllowOverride))
      end
      attr_reader :allow_override

      sig do
        params(
          allow_override:
            Autorender::UploadGenerateTokenParams::AllowOverride::OrHash
        ).void
      end
      attr_writer :allow_override

      # Custom identifier for the file
      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      # Destination folder path
      sig { returns(T.nilable(String)) }
      attr_reader :folder

      sig { params(folder: String).void }
      attr_writer :folder

      # Maximum allowed file size in bytes
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_file_size

      sig { params(max_file_size: Integer).void }
      attr_writer :max_file_size

      # Custom metadata to attach
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      # Add a random prefix to the filename
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :random_prefix

      sig { params(random_prefix: T::Boolean).void }
      attr_writer :random_prefix

      # Tags to apply to the uploaded file
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Transformation string applied on upload
      sig { returns(T.nilable(String)) }
      attr_reader :transform

      sig { params(transform: String).void }
      attr_writer :transform

      # Token lifetime in seconds (default: 300)
      sig { returns(T.nilable(Integer)) }
      attr_reader :ttl_seconds

      sig { params(ttl_seconds: Integer).void }
      attr_writer :ttl_seconds

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            file_name: String,
            allow_override:
              Autorender::UploadGenerateTokenParams::AllowOverride,
            custom_id: String,
            folder: String,
            max_file_size: Integer,
            metadata: T::Hash[Symbol, T.anything],
            random_prefix: T::Boolean,
            tags: T::Array[String],
            transform: String,
            ttl_seconds: Integer,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end

      class AllowOverride < Autorender::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Autorender::UploadGenerateTokenParams::AllowOverride,
              Autorender::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :folder

        sig { params(folder: T::Boolean).void }
        attr_writer :folder

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :tags

        sig { params(tags: T::Boolean).void }
        attr_writer :tags

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :transform

        sig { params(transform: T::Boolean).void }
        attr_writer :transform

        # Which policy fields the uploader may override
        sig do
          params(
            folder: T::Boolean,
            tags: T::Boolean,
            transform: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(folder: nil, tags: nil, transform: nil)
        end

        sig do
          override.returns(
            { folder: T::Boolean, tags: T::Boolean, transform: T::Boolean }
          )
        end
        def to_hash
        end
      end
    end
  end
end
