# typed: strong

module Autorender
  module Models
    class UploadCreateWithTokenParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Autorender::UploadCreateWithTokenParams,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :token

      # Raw file bytes. Any file type accepted.
      sig { returns(Autorender::Internal::FileInput) }
      attr_accessor :body

      sig do
        params(
          token: String,
          body: Autorender::Internal::FileInput,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        token:,
        # Raw file bytes. Any file type accepted.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            token: String,
            body: Autorender::Internal::FileInput,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
