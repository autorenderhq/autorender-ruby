# typed: strong

module Autorender
  module Models
    class MultipartUploadCompleteParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Autorender::MultipartUploadCompleteParams,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :session_id

      sig { returns(T.nilable(String)) }
      attr_reader :uuid

      sig { params(uuid: String).void }
      attr_writer :uuid

      sig do
        params(
          session_id: String,
          uuid: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(session_id:, uuid: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            session_id: String,
            uuid: String,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
