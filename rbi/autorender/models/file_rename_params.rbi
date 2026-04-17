# typed: strong

module Autorender
  module Models
    class FileRenameParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::FileRenameParams, Autorender::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :file_no

      # New base name; extension may be applied by the server
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          file_no: String,
          name: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        file_no:,
        # New base name; extension may be applied by the server
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            file_no: String,
            name: String,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
