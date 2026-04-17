# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#rename
    class FileRenameParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute file_no
      #
      #   @return [String]
      required :file_no, String

      # @!attribute name
      #   New base name; extension is preserved by the server
      #
      #   @return [String]
      required :name, String

      # @!method initialize(file_no:, name:, request_options: {})
      #   @param file_no [String]
      #
      #   @param name [String] New base name; extension is preserved by the server
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
