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

      # Exact folder number
      sig { returns(T.nilable(String)) }
      attr_reader :folder_no

      sig { params(folder_no: String).void }
      attr_writer :folder_no

      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Partial name match (case-insensitive)
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Folder prefix (e.g. products/sku123/)
      sig { returns(T.nilable(String)) }
      attr_reader :path

      sig { params(path: String).void }
      attr_writer :path

      sig { returns(T.nilable(Autorender::FileListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Autorender::FileListParams::Sort::OrSymbol).void }
      attr_writer :sort

      # Comma-separated tags
      sig { returns(T.nilable(String)) }
      attr_reader :tags

      sig { params(tags: String).void }
      attr_writer :tags

      sig do
        params(
          folder_no: String,
          limit: Integer,
          name: String,
          page: Integer,
          path: String,
          sort: Autorender::FileListParams::Sort::OrSymbol,
          tags: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Exact folder number
        folder_no: nil,
        limit: nil,
        # Partial name match (case-insensitive)
        name: nil,
        page: nil,
        # Folder prefix (e.g. products/sku123/)
        path: nil,
        sort: nil,
        # Comma-separated tags
        tags: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            folder_no: String,
            limit: Integer,
            name: String,
            page: Integer,
            path: String,
            sort: Autorender::FileListParams::Sort::OrSymbol,
            tags: String,
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

        CREATED_AT_ASC =
          T.let(:created_at_asc, Autorender::FileListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(
            :created_at_desc,
            Autorender::FileListParams::Sort::TaggedSymbol
          )
        SIZE_ASC =
          T.let(:size_asc, Autorender::FileListParams::Sort::TaggedSymbol)
        SIZE_DESC =
          T.let(:size_desc, Autorender::FileListParams::Sort::TaggedSymbol)

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
