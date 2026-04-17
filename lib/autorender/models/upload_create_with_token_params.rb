# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#create_with_token
    class UploadCreateWithTokenParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute body
      #   Raw file bytes. Any file type accepted.
      #
      #   @return [Pathname, StringIO, IO, String, Autorender::FilePart]
      required :body, Autorender::Internal::Type::FileInput

      # @!method initialize(token:, body:, request_options: {})
      #   @param token [String]
      #
      #   @param body [Pathname, StringIO, IO, String, Autorender::FilePart] Raw file bytes. Any file type accepted.
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
