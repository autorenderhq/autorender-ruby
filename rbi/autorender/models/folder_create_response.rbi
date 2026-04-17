# typed: strong

module Autorender
  module Models
    class FolderCreateResponse < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Autorender::Models::FolderCreateResponse,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :folder_no

      sig { params(folder_no: String).void }
      attr_writer :folder_no

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { params(folder_no: String, name: String).returns(T.attached_class) }
      def self.new(folder_no: nil, name: nil)
      end

      sig { override.returns({ folder_no: String, name: String }) }
      def to_hash
      end
    end
  end
end
