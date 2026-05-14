# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::MultipartUploads#complete
    class MultipartUploadCompleteParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!attribute uuid
      #
      #   @return [String, nil]
      optional :uuid, String

      # @!method initialize(session_id:, uuid: nil, request_options: {})
      #   @param session_id [String]
      #   @param uuid [String]
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
