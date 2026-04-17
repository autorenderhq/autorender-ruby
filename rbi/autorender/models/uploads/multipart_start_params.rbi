# typed: strong

module Autorender
  module Models
    module Uploads
      class MultipartStartParams < Autorender::Internal::Type::BaseModel
        extend Autorender::Internal::Type::RequestParameters::Converter
        include Autorender::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Autorender::Uploads::MultipartStartParams,
              Autorender::Internal::AnyHash
            )
          end

        # Original filename (e.g., big-video.mp4)
        sig { returns(String) }
        attr_accessor :file_name

        # MIME type (e.g., video/mp4, image/jpeg)
        sig { returns(String) }
        attr_accessor :format_

        # Total file size in bytes
        sig { returns(Integer) }
        attr_accessor :size

        sig { returns(T.nilable(String)) }
        attr_reader :custom_id

        sig { params(custom_id: String).void }
        attr_writer :custom_id

        # Destination folder path
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

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Presigned URL lifetime in seconds
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
            tags: T::Array[String],
            ttl_seconds: Integer,
            request_options: Autorender::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Original filename (e.g., big-video.mp4)
          file_name:,
          # MIME type (e.g., video/mp4, image/jpeg)
          format_:,
          # Total file size in bytes
          size:,
          custom_id: nil,
          # Destination folder path
          folder: nil,
          metadata: nil,
          random_prefix: nil,
          tags: nil,
          # Presigned URL lifetime in seconds
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
              tags: T::Array[String],
              ttl_seconds: Integer,
              request_options: Autorender::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
