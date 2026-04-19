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

      # File name for the uploaded file (e.g., avatar.jpg)
      sig { returns(String) }
      attr_accessor :file_name

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

      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      # Destination folder path
      sig { returns(T.nilable(String)) }
      attr_reader :folder

      sig { params(folder: String).void }
      attr_writer :folder

      # Max file size in bytes
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_file_size

      sig { params(max_file_size: Integer).void }
      attr_writer :max_file_size

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :random_prefix

      sig { params(random_prefix: T::Boolean).void }
      attr_writer :random_prefix

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Token lifetime in seconds. Defaults to 300.
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
          ttl_seconds: Integer,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

        sig do
          params(folder: T::Boolean, tags: T::Boolean).returns(T.attached_class)
        end
        def self.new(folder: nil, tags: nil)
        end

        sig { override.returns({ folder: T::Boolean, tags: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
