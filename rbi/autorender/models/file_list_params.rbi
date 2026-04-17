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

      # Restrict results to files in this folder (folder number)
      sig { returns(T.nilable(String)) }
      attr_reader :folder_no

      sig { params(folder_no: String).void }
      attr_writer :folder_no

      # Items per page
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Filter by filename (partial match, if supported)
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Page number (1-based)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Filter by path prefix (if supported)
      sig { returns(T.nilable(String)) }
      attr_reader :path

      sig { params(path: String).void }
      attr_writer :path

      # Field to sort by
      sig do
        returns(T.nilable(Autorender::FileListParams::SortField::OrSymbol))
      end
      attr_reader :sort_field

      sig do
        params(sort_field: Autorender::FileListParams::SortField::OrSymbol).void
      end
      attr_writer :sort_field

      # Sort direction
      sig do
        returns(T.nilable(Autorender::FileListParams::SortOrder::OrSymbol))
      end
      attr_reader :sort_order

      sig do
        params(sort_order: Autorender::FileListParams::SortOrder::OrSymbol).void
      end
      attr_writer :sort_order

      # Comma-separated tags (if supported)
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
          sort_field: Autorender::FileListParams::SortField::OrSymbol,
          sort_order: Autorender::FileListParams::SortOrder::OrSymbol,
          tags: String,
          request_options: Autorender::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Restrict results to files in this folder (folder number)
        folder_no: nil,
        # Items per page
        limit: nil,
        # Filter by filename (partial match, if supported)
        name: nil,
        # Page number (1-based)
        page: nil,
        # Filter by path prefix (if supported)
        path: nil,
        # Field to sort by
        sort_field: nil,
        # Sort direction
        sort_order: nil,
        # Comma-separated tags (if supported)
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
            sort_field: Autorender::FileListParams::SortField::OrSymbol,
            sort_order: Autorender::FileListParams::SortOrder::OrSymbol,
            tags: String,
            request_options: Autorender::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Field to sort by
      module SortField
        extend Autorender::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Autorender::FileListParams::SortField) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FILE_SIZE =
          T.let(:file_size, Autorender::FileListParams::SortField::TaggedSymbol)
        NAME = T.let(:name, Autorender::FileListParams::SortField::TaggedSymbol)
        CREATED_AT =
          T.let(
            :created_at,
            Autorender::FileListParams::SortField::TaggedSymbol
          )
        UPDATED_AT =
          T.let(
            :updated_at,
            Autorender::FileListParams::SortField::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Autorender::FileListParams::SortField::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort direction
      module SortOrder
        extend Autorender::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Autorender::FileListParams::SortOrder) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASC = T.let(:asc, Autorender::FileListParams::SortOrder::TaggedSymbol)
        DESC = T.let(:desc, Autorender::FileListParams::SortOrder::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Autorender::FileListParams::SortOrder::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
