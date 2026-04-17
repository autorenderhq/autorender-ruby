# typed: strong

module Autorender
  module Models
    class FileDeleteParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::FileDeleteParams, Autorender::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :file_no

      sig do
        params(
          file_no: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(file_no:, request_options: {})
      end

      sig do
        override.returns(
          { file_no: String, request_options: Autorender::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
