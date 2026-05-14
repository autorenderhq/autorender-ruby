# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#list
    class FileListParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute folder_no
      #   Filter by folder number
      #
      #   @return [String, nil]
      optional :folder_no, String

      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute page
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute search
      #   Partial name match (case-insensitive)
      #
      #   @return [String, nil]
      optional :search, String

      # @!attribute sort
      #
      #   @return [Symbol, Autorender::Models::FileListParams::Sort, nil]
      optional :sort, enum: -> { Autorender::FileListParams::Sort }

      # @!method initialize(folder_no: nil, limit: nil, page: nil, search: nil, sort: nil, request_options: {})
      #   @param folder_no [String] Filter by folder number
      #
      #   @param limit [Integer]
      #
      #   @param page [Integer]
      #
      #   @param search [String] Partial name match (case-insensitive)
      #
      #   @param sort [Symbol, Autorender::Models::FileListParams::Sort]
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]

      module Sort
        extend Autorender::Internal::Type::Enum

        NAME_ASC = :name_asc
        NAME_DESC = :name_desc
        SIZE_ASC = :size_asc
        SIZE_DESC = :size_desc
        CREATED_AT_ASC = :created_at_asc
        CREATED_AT_DESC = :created_at_desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
