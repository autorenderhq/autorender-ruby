# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#upload_with_token
    class UploadUploadWithTokenParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute token
      #
      #   @return [String]
      required :token, String

      # @!attribute file
      #   Raw file bytes. Accepts any file type (images, documents, videos, etc.).
      #
      #   @return [Pathname, StringIO, IO, String, Autorender::FilePart]
      required :file, Autorender::Internal::Type::FileInput

      # @!method initialize(token:, file:, request_options: {})
      #   @param token [String]
      #
      #   @param file [Pathname, StringIO, IO, String, Autorender::FilePart] Raw file bytes. Accepts any file type (images, documents, videos, etc.).
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
