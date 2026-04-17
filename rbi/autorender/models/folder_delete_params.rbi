# typed: strong

module Autorender
  module Models
    class FolderDeleteParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::FolderDeleteParams, Autorender::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :folder_no

      sig do
        params(
          folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(folder_no:, request_options: {})
      end

      sig do
        override.returns(
          { folder_no: String, request_options: Autorender::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
