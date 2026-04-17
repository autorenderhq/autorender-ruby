# typed: strong

module Autorender
  module Models
    class FolderListParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::FolderListParams, Autorender::Internal::AnyHash)
        end

      # Return only direct children of this folder
      sig { returns(T.nilable(String)) }
      attr_reader :parent_folder_no

      sig { params(parent_folder_no: String).void }
      attr_writer :parent_folder_no

      sig do
        params(
          parent_folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Return only direct children of this folder
        parent_folder_no: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            parent_folder_no: String,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
