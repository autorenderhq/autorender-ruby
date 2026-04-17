# typed: strong

module Autorender
  module Models
    class FolderCreateParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::FolderCreateParams, Autorender::Internal::AnyHash)
        end

      # Folder display name
      sig { returns(String) }
      attr_accessor :name

      # Parent folder number; omit for root level
      sig { returns(T.nilable(String)) }
      attr_reader :parent_folder_no

      sig { params(parent_folder_no: String).void }
      attr_writer :parent_folder_no

      sig do
        params(
          name: String,
          parent_folder_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Folder display name
        name:,
        # Parent folder number; omit for root level
        parent_folder_no: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
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
