# frozen_string_literal: true

module Autorender
  module Internal
    # @generic Elem
    #
    # @example
    #   if page_pagination.has_next?
    #     page_pagination = page_pagination.next_page
    #   end
    #
    # @example
    #   page_pagination.auto_paging_each do |item|
    #     puts(item)
    #   end
    class PagePagination
      include Autorender::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [Integer]
      attr_accessor :current_page

      # @return [Boolean]
      attr_accessor :has_next

      # @return [Integer]
      attr_accessor :total_results

      # @return [Boolean]
      def next_page?
        !data.to_a.empty?
      end

      # @raise [Autorender::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Autorender::Internal::Util.deep_merge(@req, {query: {page: (current_page || 1).to_i.succ}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Autorender::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { Autorender::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        @current_page = page_data[:current_page]
        @has_next = page_data[:has_next]
        @total_results = page_data[:total_results]
      end

      # @api private
      #
      # @return [String]
      def inspect
        # rubocop:disable Layout/LineLength
        model = Autorender::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} current_page=#{current_page.inspect} has_next=#{has_next.inspect} total_results=#{total_results.inspect}>"
        # rubocop:enable Layout/LineLength
      end
    end
  end
end
