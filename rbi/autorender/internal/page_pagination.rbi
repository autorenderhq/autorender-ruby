# typed: strong

module Autorender
  module Internal
    class PagePagination
      include Autorender::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(Integer) }
      attr_accessor :current_page

      sig { returns(T::Boolean) }
      attr_accessor :has_next

      sig { returns(Integer) }
      attr_accessor :total_results

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
