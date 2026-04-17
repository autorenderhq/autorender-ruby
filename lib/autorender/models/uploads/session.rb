# frozen_string_literal: true

module Autorender
  module Models
    module Uploads
      # @see Autorender::Resources::Uploads::Multipart#start
      class Session < Autorender::Internal::Type::BaseModel
        # @!attribute part_size
        #   Part size in bytes
        #
        #   @return [Integer, nil]
        optional :part_size, Integer

        # @!attribute parts
        #   Presigned PUT URLs in order, one per part
        #
        #   @return [Array<String>, nil]
        optional :parts, Autorender::Internal::Type::ArrayOf[String]

        # @!attribute session_id
        #   Session UUID; required for the complete call
        #
        #   @return [String, nil]
        optional :session_id, String

        # @!method initialize(part_size: nil, parts: nil, session_id: nil)
        #   @param part_size [Integer] Part size in bytes
        #
        #   @param parts [Array<String>] Presigned PUT URLs in order, one per part
        #
        #   @param session_id [String] Session UUID; required for the complete call
      end
    end
  end
end
