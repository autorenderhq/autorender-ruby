# typed: strong

module Autorender
  module Models
    class FileListParams < Autorender::Internal::Type::BaseModel
      extend Autorender::Internal::Type::RequestParameters::Converter
      include Autorender::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Autorender::FileListParams, Autorender::Internal::AnyHash)
        end

      # Filter by folder number
      sig { returns(T.nilable(String)) }
      attr_reader :folder_no

      sig { params(folder_no: String).void }
      attr_writer :folder_no

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Partial name match (case-insensitive)
      sig { returns(T.nilable(String)) }
      attr_reader :search

      sig { params(search: String).void }
      attr_writer :search

      sig { returns(T.nilable(Autorender::FileListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Autorender::FileListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          folder_no: String,
          limit: Integer,
          page: Integer,
          search: String,
          sort: Autorender::FileListParams::Sort::OrSymbol,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by folder number
        folder_no: nil,
        limit: nil,
        page: nil,
        # Partial name match (case-insensitive)
        search: nil,
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            folder_no: String,
            limit: Integer,
            page: Integer,
            search: String,
            sort: Autorender::FileListParams::Sort::OrSymbol,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Sort
        extend Autorender::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Autorender::FileListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NAME_ASC =
          T.let(:name_asc, Autorender::FileListParams::Sort::TaggedSymbol)
        NAME_DESC =
          T.let(:name_desc, Autorender::FileListParams::Sort::TaggedSymbol)
        SIZE_ASC =
          T.let(:size_asc, Autorender::FileListParams::Sort::TaggedSymbol)
        SIZE_DESC =
          T.let(:size_desc, Autorender::FileListParams::Sort::TaggedSymbol)
        CREATED_AT_ASC =
          T.let(:created_at_asc, Autorender::FileListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(
            :created_at_desc,
            Autorender::FileListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Autorender::FileListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
