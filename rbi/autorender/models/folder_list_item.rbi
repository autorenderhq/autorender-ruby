# typed: strong

module Autorender
  module Models
    class FolderListItem < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Autorender::FolderListItem, Autorender::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :folder_no

      sig { params(folder_no: String).void }
      attr_writer :folder_no

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Integer)) }
      attr_reader :total_items

      sig { params(total_items: Integer).void }
      attr_writer :total_items

      # Total size of items in bytes
      sig { returns(T.nilable(Integer)) }
      attr_reader :total_size

      sig { params(total_size: Integer).void }
      attr_writer :total_size

      sig do
        params(
          created_at: Time,
          folder_no: String,
          name: String,
          total_items: Integer,
          total_size: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        created_at: nil,
        folder_no: nil,
        name: nil,
        total_items: nil,
        # Total size of items in bytes
        total_size: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            folder_no: String,
            name: String,
            total_items: Integer,
            total_size: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
