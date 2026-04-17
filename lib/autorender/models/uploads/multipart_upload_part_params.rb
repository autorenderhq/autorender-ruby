# frozen_string_literal: true

module Autorender
  module Models
    module Uploads
      # @see Autorender::Resources::Uploads::Multipart#upload_part
      class MultipartUploadPartParams < Autorender::Internal::Type::BaseModel
        extend Autorender::Internal::Type::RequestParameters::Converter
        include Autorender::Internal::Type::RequestParameters

        # @!attribute body
        #   One multipart chunk uploaded to a presigned URL
        #
        #   @return [Pathname, StringIO, IO, String, Autorender::FilePart]
        required :body, Autorender::Internal::Type::FileInput

        # @!method initialize(body:, request_options: {})
        #   @param body [Pathname, StringIO, IO, String, Autorender::FilePart] One multipart chunk uploaded to a presigned URL
        #
        #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
