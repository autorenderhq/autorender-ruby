# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#delete
    class FileDeleteParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute file_no
      #
      #   @return [String]
      required :file_no, String

      # @!method initialize(file_no:, request_options: {})
      #   @param file_no [String]
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
