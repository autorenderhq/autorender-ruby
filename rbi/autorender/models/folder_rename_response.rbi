# typed: strong

module Autorender
  module Models
    class FolderRenameResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::FolderRenameResponse,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :folder_no

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :parent_folder_no

      sig { returns(String) }
      attr_accessor :path

      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      # Renamed folder
      sig do
        params(
          id: String,
          created_at: Time,
          folder_no: String,
          name: String,
          parent_folder_no: T.nilable(String),
          path: String,
          updated_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        folder_no:,
        name:,
        parent_folder_no:,
        path:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            folder_no: String,
            name: String,
            parent_folder_no: T.nilable(String),
            path: String,
            updated_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
