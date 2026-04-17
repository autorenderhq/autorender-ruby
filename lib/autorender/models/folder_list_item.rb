# frozen_string_literal: true

module Autorender
  module Models
    class FolderListItem < Autorender::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute folder_no
      #
      #   @return [String, nil]
      optional :folder_no, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute total_items
      #
      #   @return [Integer, nil]
      optional :total_items, Integer

      # @!attribute total_size
      #   Total size of items in bytes
      #
      #   @return [Integer, nil]
      optional :total_size, Integer

      # @!method initialize(created_at: nil, folder_no: nil, name: nil, total_items: nil, total_size: nil)
      #   @param created_at [Time]
      #
      #   @param folder_no [String]
      #
      #   @param name [String]
      #
      #   @param total_items [Integer]
      #
      #   @param total_size [Integer] Total size of items in bytes
    end
  end
end
