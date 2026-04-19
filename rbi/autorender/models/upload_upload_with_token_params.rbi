# typed: strong

module Autorender
  module Models
    class UploadUploadWithTokenParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Autorender::UploadUploadWithTokenParams,
            Autorender::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :token

      # Raw file bytes. Accepts any file type (images, documents, videos, etc.).
      sig { returns(Autorender::Internal::FileInput) }
      attr_accessor :file

      sig do
        params(
          token: String,
          file: Autorender::Internal::FileInput,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        token:,
        # Raw file bytes. Accepts any file type (images, documents, videos, etc.).
        file:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            token: String,
            file: Autorender::Internal::FileInput,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
