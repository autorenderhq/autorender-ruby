# typed: strong

module Autorender
  module Models
    class FileObject < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Autorender::FileObject, Autorender::Internal::AnyHash)
        end

      sig { returns(T.nilable(Autorender::FileObject::Data)) }
      attr_reader :data

      sig { params(data: Autorender::FileObject::Data::OrHash).void }
      attr_writer :data

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :success

      sig { params(success: T::Boolean).void }
      attr_writer :success

      sig do
        params(
          data: Autorender::FileObject::Data::OrHash,
          success: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(data: nil, success: nil)
      end

      sig do
        override.returns(
          { data: Autorender::FileObject::Data, success: T::Boolean }
        )
      end
      def to_hash
      end

      class Data < Autorender::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Autorender::FileObject::Data, Autorender::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :asset_key

        sig { params(asset_key: String).void }
        attr_writer :asset_key

        sig { returns(T.nilable(String)) }
        attr_reader :asset_url

        sig { params(asset_url: String).void }
        attr_writer :asset_url

        sig { returns(T.nilable(Autorender::FileObject::Data::Dimensions)) }
        attr_reader :dimensions

        sig do
          params(
            dimensions: Autorender::FileObject::Data::Dimensions::OrHash
          ).void
        end
        attr_writer :dimensions

        sig { returns(T.nilable(String)) }
        attr_reader :extension

        sig { params(extension: String).void }
        attr_writer :extension

        sig { returns(T.nilable(String)) }
        attr_reader :file_no

        sig { params(file_no: String).void }
        attr_writer :file_no

        sig { returns(T.nilable(T.anything)) }
        attr_reader :folder

        sig { params(folder: T.anything).void }
        attr_writer :folder

        sig { returns(T.nilable(String)) }
        attr_reader :format_

        sig { params(format_: String).void }
        attr_writer :format_

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_accessor :path

        # File size in bytes
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        sig { returns(T.nilable(Time)) }
        attr_reader :uploaded_at

        sig { params(uploaded_at: Time).void }
        attr_writer :uploaded_at

        sig { returns(T.nilable(String)) }
        attr_reader :uploaded_by

        sig { params(uploaded_by: String).void }
        attr_writer :uploaded_by

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { returns(T.nilable(Autorender::FileObject::Data::Workspace)) }
        attr_reader :workspace

        sig do
          params(
            workspace: Autorender::FileObject::Data::Workspace::OrHash
          ).void
        end
        attr_writer :workspace

        sig do
          params(
            id: String,
            asset_key: String,
            asset_url: String,
            dimensions: Autorender::FileObject::Data::Dimensions::OrHash,
            extension: String,
            file_no: String,
            folder: T.anything,
            format_: String,
            name: String,
            path: T.nilable(String),
            size: Integer,
            uploaded_at: Time,
            uploaded_by: String,
            url: String,
            workspace: Autorender::FileObject::Data::Workspace::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          asset_key: nil,
          asset_url: nil,
          dimensions: nil,
          extension: nil,
          file_no: nil,
          folder: nil,
          format_: nil,
          name: nil,
          path: nil,
          # File size in bytes
          size: nil,
          uploaded_at: nil,
          uploaded_by: nil,
          url: nil,
          workspace: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              asset_key: String,
              asset_url: String,
              dimensions: Autorender::FileObject::Data::Dimensions,
              extension: String,
              file_no: String,
              folder: T.anything,
              format_: String,
              name: String,
              path: T.nilable(String),
              size: Integer,
              uploaded_at: Time,
              uploaded_by: String,
              url: String,
              workspace: Autorender::FileObject::Data::Workspace
            }
          )
        end
        def to_hash
        end

        class Dimensions < Autorender::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Autorender::FileObject::Data::Dimensions,
                Autorender::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Integer)) }
          attr_reader :height

          sig { params(height: Integer).void }
          attr_writer :height

          sig { returns(T.nilable(Integer)) }
          attr_reader :width

          sig { params(width: Integer).void }
          attr_writer :width

          sig do
            params(height: Integer, width: Integer).returns(T.attached_class)
          end
          def self.new(height: nil, width: nil)
          end

          sig { override.returns({ height: Integer, width: Integer }) }
          def to_hash
          end
        end

        class Workspace < Autorender::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Autorender::FileObject::Data::Workspace,
                Autorender::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :workspace_no

          sig { params(workspace_no: String).void }
          attr_writer :workspace_no

          sig do
            params(name: String, workspace_no: String).returns(T.attached_class)
          end
          def self.new(name: nil, workspace_no: nil)
          end

          sig { override.returns({ name: String, workspace_no: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
