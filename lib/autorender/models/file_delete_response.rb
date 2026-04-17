# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#delete
    class FileDeleteResponse < Autorender::Internal::Type::BaseModel
      # @!attribute message
      #
      #   @return [String, nil]
      optional :message, String

      # @!method initialize(message: nil)
      #   @param message [String]
    end
  end
end
