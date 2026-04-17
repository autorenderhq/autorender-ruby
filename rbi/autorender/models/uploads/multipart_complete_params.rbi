# typed: strong

module Autorender
  module Models
    module Uploads
      class MultipartCompleteParams < Autorender::Internal::Type::BaseModel
        extend Autorender::Internal::Type::RequestParameters::Converter
        include Autorender::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Autorender::Uploads::MultipartCompleteParams,
              Autorender::Internal::AnyHash
            )
          end

        # Session ID from POST /api/v1/multipart/start
        sig { returns(String) }
        attr_accessor :session_id

        sig do
          params(
            session_id: String,
            request_options: Autorender::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Session ID from POST /api/v1/multipart/start
          session_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { session_id: String, request_options: Autorender::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
