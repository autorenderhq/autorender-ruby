# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Folders#list
    class FolderListParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute parent_folder_no
      #   Filter by parent folder number
      #
      #   @return [String, nil]
      optional :parent_folder_no, String

      # @!attribute search
      #   Partial name match (case-insensitive)
      #
      #   @return [String, nil]
      optional :search, String

      # @!attribute sort
      #
      #   @return [Symbol, Autorender::Models::FolderListParams::Sort, nil]
      optional :sort, enum: -> { Autorender::FolderListParams::Sort }

      # @!method initialize(parent_folder_no: nil, search: nil, sort: nil, request_options: {})
      #   @param parent_folder_no [String] Filter by parent folder number
      #
      #   @param search [String] Partial name match (case-insensitive)
      #
      #   @param sort [Symbol, Autorender::Models::FolderListParams::Sort]
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]

      module Sort
        extend Autorender::Internal::Type::Enum

        NAME_ASC = :name_asc
        NAME_DESC = :name_desc
        CREATED_AT_ASC = :created_at_asc
        CREATED_AT_DESC = :created_at_desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
