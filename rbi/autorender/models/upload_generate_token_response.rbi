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

      sig { returns(String) }
      attr_accessor :token

      sig { returns(Integer) }
      attr_accessor :expire_at

      sig { returns(Autorender::Models::UploadGenerateTokenResponse::Policy) }
      attr_reader :policy

      sig do
        params(
          policy:
            Autorender::Models::UploadGenerateTokenResponse::Policy::OrHash
        ).void
      end
      attr_writer :policy

      sig { returns(String) }
      attr_accessor :public_key

      sig { returns(String) }
      attr_accessor :signature

      sig { returns(String) }
      attr_accessor :workspace_id

      # Token generated
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
        token:,
        expire_at:,
        policy:,
        public_key:,
        signature:,
        workspace_id:
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
            Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride
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

        sig { returns(String) }
        attr_accessor :folder

        sig { returns(Integer) }
        attr_accessor :max_file_size

        sig { returns(T::Array[String]) }
        attr_accessor :tags

        sig do
          params(
            allow_override:
              Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride::OrHash,
            folder: String,
            max_file_size: Integer,
            tags: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(allow_override:, folder:, max_file_size:, tags:)
        end

        sig do
          override.returns(
            {
              allow_override:
                Autorender::Models::UploadGenerateTokenResponse::Policy::AllowOverride,
              folder: String,
              max_file_size: Integer,
              tags: T::Array[String]
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

          sig do
            params(folder: T::Boolean, tags: T::Boolean).returns(
              T.attached_class
            )
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
end
