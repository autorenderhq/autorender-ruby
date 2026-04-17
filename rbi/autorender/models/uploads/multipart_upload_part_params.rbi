# typed: strong

module Autorender
  module Models
    module Uploads
      class MultipartUploadPartParams < Autorender::Internal::Type::BaseModel
        extend Autorender::Internal::Type::RequestParameters::Converter
        include Autorender::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Autorender::Uploads::MultipartUploadPartParams,
              Autorender::Internal::AnyHash
            )
          end

        # One multipart chunk uploaded to a presigned URL
        sig { returns(Autorender::Internal::FileInput) }
        attr_accessor :body

        sig do
          params(
            body: Autorender::Internal::FileInput,
            request_options: Autorender::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # One multipart chunk uploaded to a presigned URL
          body:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
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
end
