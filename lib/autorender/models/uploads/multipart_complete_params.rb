# frozen_string_literal: true

module Autorender
  module Models
    module Uploads
      # @see Autorender::Resources::Uploads::Multipart#complete
      class MultipartCompleteParams < Autorender::Internal::Type::BaseModel
        extend Autorender::Internal::Type::RequestParameters::Converter
        include Autorender::Internal::Type::RequestParameters

        # @!attribute session_id
        #   Session ID from POST /api/v1/multipart/start
        #
        #   @return [String]
        required :session_id, String

        # @!method initialize(session_id:, request_options: {})
        #   @param session_id [String] Session ID from POST /api/v1/multipart/start
        #
        #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
