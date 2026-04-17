# typed: strong

module Autorender
  module Models
    class FolderListResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::FolderListResponse,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[Autorender::FolderListItem])) }
      attr_reader :folders

      sig { params(folders: T::Array[Autorender::FolderListItem::OrHash]).void }
      attr_writer :folders

      sig do
        params(folders: T::Array[Autorender::FolderListItem::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(folders: nil)
      end

      sig do
        override.returns({ folders: T::Array[Autorender::FolderListItem] })
      end
      def to_hash
      end
    end
  end
end
