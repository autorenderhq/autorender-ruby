# typed: strong

module Autorender
  module Models
    class UploadGenerateTokenResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::UploadGenerateTokenResponse,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Unix timestamp of expiry
      sig { returns(T.nilable(Integer)) }
      attr_reader :expire_at

      sig { params(expire_at: Integer).void }
      attr_writer :expire_at

      sig do
        returns(
          T.nilable(Autorender::Models::UploadGenerateTokenResponse::Policy)
        )
      end
      attr_reader :policy

      sig do
        params(
          policy:
            Autorender::Models::UploadGenerateTokenResponse::Policy::OrHash
        ).void
      end
      attr_writer :policy

      sig { returns(T.nilable(String)) }
      attr_reader :public_key

      sig { params(public_key: String).void }
      attr_writer :public_key

      sig { returns(T.nilable(String)) }
      attr_reader :signature

      sig { params(signature: String).void }
      attr_writer :signature

      sig { returns(T.nilable(String)) }
      attr_reader :workspace_id

      sig { params(workspace_id: String).void }
      attr_writer :workspace_id

      sig do
        params(
          token: String,
          expire_at: Integer,
          policy:
            Autorender::Models::UploadGenerateTokenResponse::Policy::OrHash,
          public_key: String,
          signature: String,
          workspace_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        token: nil,
        # Unix timestamp of expiry
        expire_at: nil,
        policy: nil,
        public_key: nil,
        signature: nil,
        workspace_id: nil
      )
      end

      sig do
        override.returns(
          {
            token: String,
            expire_at: Integer,
            policy: Autorender::Models::UploadGenerateTokenResponse::Policy,
            public_key: String,
            signature: String,
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
              Autorender::Models::UploadGenerateTokenResponse::Policy,
              Autorender::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride
            )
          )
        end
        attr_reader :allow_override

        sig do
          params(
            allow_override:
              Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride::OrHash
          ).void
        end
        attr_writer :allow_override

        sig { returns(T.nilable(String)) }
        attr_reader :folder

        sig { params(folder: String).void }
        attr_writer :folder

        sig { returns(T.nilable(Integer)) }
        attr_reader :max_file_size

        sig { params(max_file_size: Integer).void }
        attr_writer :max_file_size

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig { returns(T.nilable(String)) }
        attr_accessor :transform

        sig do
          params(
            allow_override:
              Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride::OrHash,
            folder: String,
            max_file_size: Integer,
            tags: T::Array[String],
            transform: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          allow_override: nil,
          folder: nil,
          max_file_size: nil,
          tags: nil,
          transform: nil
        )
        end

        sig do
          override.returns(
            {
              allow_override:
                Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride,
              folder: String,
              max_file_size: Integer,
              tags: T::Array[String],
              transform: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class AllowOverride < Autorender::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride,
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
end
