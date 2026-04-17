# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#list
    class FileListParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      # @!attribute folder_no
      #   Restrict results to files in this folder (folder number)
      #
      #   @return [String, nil]
      optional :folder_no, String

      # @!attribute limit
      #   Items per page
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute name
      #   Filter by filename (partial match, if supported)
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute page
      #   Page number (1-based)
      #
      #   @return [Integer, nil]
      optional :page, Integer

      # @!attribute path
      #   Filter by path prefix (if supported)
      #
      #   @return [String, nil]
      optional :path, String

      # @!attribute sort_field
      #   Field to sort by
      #
      #   @return [Symbol, Autorender::Models::FileListParams::SortField, nil]
      optional :sort_field, enum: -> { Autorender::FileListParams::SortField }

      # @!attribute sort_order
      #   Sort direction
      #
      #   @return [Symbol, Autorender::Models::FileListParams::SortOrder, nil]
      optional :sort_order, enum: -> { Autorender::FileListParams::SortOrder }

      # @!attribute tags
      #   Comma-separated tags (if supported)
      #
      #   @return [String, nil]
      optional :tags, String

      # @!method initialize(folder_no: nil, limit: nil, name: nil, page: nil, path: nil, sort_field: nil, sort_order: nil, tags: nil, request_options: {})
      #   @param folder_no [String] Restrict results to files in this folder (folder number)
      #
      #   @param limit [Integer] Items per page
      #
      #   @param name [String] Filter by filename (partial match, if supported)
      #
      #   @param page [Integer] Page number (1-based)
      #
      #   @param path [String] Filter by path prefix (if supported)
      #
      #   @param sort_field [Symbol, Autorender::Models::FileListParams::SortField] Field to sort by
      #
      #   @param sort_order [Symbol, Autorender::Models::FileListParams::SortOrder] Sort direction
      #
      #   @param tags [String] Comma-separated tags (if supported)
      #
      #   @param request_options [Autorender::RequestOptions, Hash{Symbol=>Object}]

      # Field to sort by
      module SortField
        extend Autorender::Internal::Type::Enum

        FILE_SIZE = :file_size
        NAME = :name
        CREATED_AT = :created_at
        UPDATED_AT = :updated_at

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sort direction
      module SortOrder
        extend Autorender::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
