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

      # Folder name without slashes
      sig { returns(String) }
      attr_accessor :folder_name

      # Optional parent path, e.g. products/sku123
      sig { returns(T.nilable(String)) }
      attr_reader :path

      sig { params(path: String).void }
      attr_writer :path

      sig do
        params(
          folder_name: String,
          path: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Folder name without slashes
        folder_name:,
        # Optional parent path, e.g. products/sku123
        path: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            folder_name: String,
            path: String,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
