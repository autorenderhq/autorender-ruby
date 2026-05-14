# typed: strong

module Autorender
  module Models
    class FolderListParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::FolderListParams, Autorender::Internal::AnyHash)
        end

      # Filter by parent folder number
      sig { returns(T.nilable(String)) }
      attr_reader :parent_folder_no

      sig { params(parent_folder_no: String).void }
      attr_writer :parent_folder_no

      # Partial name match (case-insensitive)
      sig { returns(T.nilable(String)) }
      attr_reader :search

      sig { params(search: String).void }
      attr_writer :search

      sig { returns(T.nilable(Autorender::FolderListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Autorender::FolderListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          parent_folder_no: String,
          search: String,
          sort: Autorender::FolderListParams::Sort::OrSymbol,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by parent folder number
        parent_folder_no: nil,
        # Partial name match (case-insensitive)
        search: nil,
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            parent_folder_no: String,
            search: String,
            sort: Autorender::FolderListParams::Sort::OrSymbol,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Sort
        extend Autorender::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Autorender::FolderListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME_ASC =
          T.let(:name_asc, Autorender::FolderListParams::Sort::TaggedSymbol)
        NAME_DESC =
          T.let(:name_desc, Autorender::FolderListParams::Sort::TaggedSymbol)
        CREATED_AT_ASC =
          T.let(
            :created_at_asc,
            Autorender::FolderListParams::Sort::TaggedSymbol
          )
        CREATED_AT_DESC =
          T.let(
            :created_at_desc,
            Autorender::FolderListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Autorender::FolderListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
