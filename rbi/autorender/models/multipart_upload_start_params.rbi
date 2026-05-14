# typed: strong

module Autorender
  module Models
    class MultipartUploadStartParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Autorender::MultipartUploadStartParams,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :file_name

      sig { returns(String) }
      attr_accessor :format_

      sig { returns(Integer) }
      attr_accessor :size

      sig { returns(T.nilable(String)) }
      attr_reader :custom_id

      sig { params(custom_id: String).void }
      attr_writer :custom_id

      sig { returns(T.nilable(String)) }
      attr_reader :folder

      sig { params(folder: String).void }
      attr_writer :folder

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, T.anything]).void }
      attr_writer :metadata

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :random_prefix

      sig { params(random_prefix: T::Boolean).void }
      attr_writer :random_prefix

      sig do
        returns(
          T.nilable(Autorender::MultipartUploadStartParams::Tags::Variants)
        )
      end
      attr_reader :tags

      sig do
        params(
          tags: Autorender::MultipartUploadStartParams::Tags::Variants
        ).void
      end
      attr_writer :tags

      sig { returns(T.nilable(Integer)) }
      attr_reader :ttl_seconds

      sig { params(ttl_seconds: Integer).void }
      attr_writer :ttl_seconds

      sig do
        params(
          file_name: String,
          format_: String,
          size: Integer,
          custom_id: String,
          folder: String,
          metadata: T::Hash[Symbol, T.anything],
          random_prefix: T::Boolean,
          tags: Autorender::MultipartUploadStartParams::Tags::Variants,
          ttl_seconds: Integer,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        file_name:,
        format_:,
        size:,
        custom_id: nil,
        folder: nil,
        metadata: nil,
        random_prefix: nil,
        tags: nil,
        ttl_seconds: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            file_name: String,
            format_: String,
            size: Integer,
            custom_id: String,
            folder: String,
            metadata: T::Hash[Symbol, T.anything],
            random_prefix: T::Boolean,
            tags: Autorender::MultipartUploadStartParams::Tags::Variants,
            ttl_seconds: Integer,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Tags
        extend Autorender::Internal::Type::Union

        Variants = T.type_alias { T.any(T::Array[String], String) }

        sig do
          override.returns(
            T::Array[Autorender::MultipartUploadStartParams::Tags::Variants]
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
