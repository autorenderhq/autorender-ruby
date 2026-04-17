# frozen_string_literal: true

module Autorender
  module Models
    # @see Autorender::Resources::Files#list
    class FileListResponse < Autorender::Internal::Type::BaseModel
      # @!attribute files
      #
      #   @return [Array<Autorender::Models::FileListItem>]
      required :files, -> { Autorender::Internal::Type::ArrayOf[Autorender::FileListItem] }

      # @!attribute meta
      #
      #   @return [Autorender::Models::FileListResponse::Meta]
      required :meta, -> { Autorender::Models::FileListResponse::Meta }

      # @!method initialize(files:, meta:)
      #   @param files [Array<Autorender::Models::FileListItem>]
      #   @param meta [Autorender::Models::FileListResponse::Meta]

      # @see Autorender::Models::FileListResponse#meta
      class Meta < Autorender::Internal::Type::BaseModel
        # @!attribute has_next
        #
        #   @return [Boolean]
        required :has_next, Autorender::Internal::Type::Boolean, api_name: :hasNext

        # @!attribute has_prev
        #
        #   @return [Boolean]
        required :has_prev, Autorender::Internal::Type::Boolean, api_name: :hasPrev

        # @!attribute limit
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute page
        #
        #   @return [Integer]
        required :page, Integer

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(has_next:, has_prev:, limit:, page:, total:)
        #   @param has_next [Boolean]
        #   @param has_prev [Boolean]
        #   @param limit [Integer]
        #   @param page [Integer]
        #   @param total [Integer]
      end
    end
  end
end
