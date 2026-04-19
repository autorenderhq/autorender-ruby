# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#list
    class FileListParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute folder_no
      #   Exact folder number
      #
      #   @return [String, nil]
      optional :folder_no, String

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute name
      #   Partial name match (case-insensitive)
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute path
      #   Folder prefix (e.g. products/sku123/)
      #
      #   @return [String, nil]
      optional :path, String

      # @!attribute sort
      #
      #   @return [Symbol, Autorender::Models::FileListParams::Sort, nil]
      optional :sort, enum: -> { Autorender::FileListParams::Sort }

      # @!attribute tags
      #   Comma-separated tags
      #
      #   @return [String, nil]
      optional :tags, String

      # @!method initialize(folder_no: nil, limit: nil, name: nil, page: nil, path: nil, sort: nil, tags: nil, request_options: {})
      #   @param folder_no [String] Exact folder number
      #
      #   @param limit [Integer]
      #
      #   @param name [String] Partial name match (case-insensitive)
      #
      #   @param page [Integer]
      #
      #   @param path [String] Folder prefix (e.g. products/sku123/)
      #
      #   @param sort [Symbol, Autorender::Models::FileListParams::Sort]
      #
      #   @param tags [String] Comma-separated tags
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]

      module Sort
        extend Autorender::Internal::Type::Enum

        CREATED_AT_ASC = :created_at_asc
        CREATED_AT_DESC = :created_at_desc
        SIZE_ASC = :size_asc
        SIZE_DESC = :size_desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
