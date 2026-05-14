# typed: strong

module Autorender
  module Models
    class MultipartUploadStartResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::MultipartUploadStartResponse,
            Autorender::Internal::AnyHash
          )
        end

      # Unix timestamp when the session expires
      sig { returns(Integer) }
      attr_accessor :expire_at

      sig { returns(Integer) }
      attr_accessor :min_part_size

      sig { returns(Integer) }
      attr_accessor :part_size

      # Pre-signed S3 upload URLs, one per part
      sig { returns(T::Array[String]) }
      attr_accessor :parts

      sig { returns(Autorender::Models::MultipartUploadStartResponse::Policy) }
      attr_reader :policy

      sig do
        params(
          policy:
            Autorender::Models::MultipartUploadStartResponse::Policy::OrHash
        ).void
      end
      attr_writer :policy

      sig { returns(String) }
      attr_accessor :public_key

      sig { returns(String) }
      attr_accessor :session_id

      sig { returns(String) }
      attr_accessor :uuid

      sig { returns(String) }
      attr_accessor :workspace_id

      # Session created
      sig do
        params(
          expire_at: Integer,
          min_part_size: Integer,
          part_size: Integer,
          parts: T::Array[String],
          policy:
            Autorender::Models::MultipartUploadStartResponse::Policy::OrHash,
          public_key: String,
          session_id: String,
          uuid: String,
          workspace_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unix timestamp when the session expires
        expire_at:,
        min_part_size:,
        part_size:,
        # Pre-signed S3 upload URLs, one per part
        parts:,
        policy:,
        public_key:,
        session_id:,
        uuid:,
        workspace_id:
      )
      end

      sig do
        override.returns(
          {
            expire_at: Integer,
            min_part_size: Integer,
            part_size: Integer,
            parts: T::Array[String],
            policy: Autorender::Models::MultipartUploadStartResponse::Policy,
            public_key: String,
            session_id: String,
            uuid: String,
            workspace_id: String
          }
        )
      end
      def to_hash
      end

      class Policy < Autorender::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Autorender::Models::MultipartUploadStartResponse::Policy,
              Autorender::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :folder

        sig { returns(String) }
        attr_accessor :format_

        sig { returns(Integer) }
        attr_accessor :size

        sig { returns(T::Array[String]) }
        attr_accessor :tags

        sig do
          params(
            folder: String,
            format_: String,
            size: Integer,
            tags: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(folder:, format_:, size:, tags:)
        end

        sig do
          override.returns(
            {
              folder: String,
              format_: String,
              size: Integer,
              tags: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
