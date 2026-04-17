# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Uploads#create
    class Upload < Autorender::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Autorender::Models::UploadData]
      required :data, -> { Autorender::UploadData }

      # @!attribute success
      #
      #   @return [Boolean]
      required :success, Autorender::Internal::Type::Boolean

      # @!method initialize(data:, success:)
      #   @param data [Autorender::Models::UploadData]
      #   @param success [Boolean]
    end
  end
end
