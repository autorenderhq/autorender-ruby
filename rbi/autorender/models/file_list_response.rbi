# typed: strong

module Autorender
  module Models
    class FileListResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::FileListResponse,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Autorender::FileListItem]) }
      attr_accessor :files

      sig { returns(Autorender::Models::FileListResponse::Meta) }
      attr_reader :meta

      sig do
        params(meta: Autorender::Models::FileListResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          files: T::Array[Autorender::FileListItem::OrHash],
          meta: Autorender::Models::FileListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(files:, meta:)
      end

      sig do
        override.returns(
          {
            files: T::Array[Autorender::FileListItem],
            meta: Autorender::Models::FileListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < Autorender::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Autorender::Models::FileListResponse::Meta,
              Autorender::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :has_next

        sig { returns(T::Boolean) }
        attr_accessor :has_prev

        sig { returns(Integer) }
        attr_accessor :limit

        sig { returns(Integer) }
        attr_accessor :page

        sig { returns(Integer) }
        attr_accessor :total

        sig do
          params(
            has_next: T::Boolean,
            has_prev: T::Boolean,
            limit: Integer,
            page: Integer,
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(has_next:, has_prev:, limit:, page:, total:)
        end

        sig do
          override.returns(
            {
              has_next: T::Boolean,
              has_prev: T::Boolean,
              limit: Integer,
              page: Integer,
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
