# typed: strong

module Autorender
  module Models
    class Folder < Autorender::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Autorender::Folder, Autorender::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :created_by

      sig { params(created_by: String).void }
      attr_writer :created_by

      sig { returns(T.nilable(String)) }
      attr_reader :folder_no

      sig { params(folder_no: String).void }
      attr_writer :folder_no

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_active

      sig { params(is_active: T::Boolean).void }
      attr_writer :is_active

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_delete

      sig { params(is_delete: T::Boolean).void }
      attr_writer :is_delete

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_accessor :parent_folder

      sig { returns(T.nilable(String)) }
      attr_reader :path

      sig { params(path: String).void }
      attr_writer :path

      sig { returns(T.nilable(String)) }
      attr_reader :source

      sig { params(source: String).void }
      attr_writer :source

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig { returns(T.nilable(Autorender::Folder::Workspace)) }
      attr_reader :workspace

      sig { params(workspace: Autorender::Folder::Workspace::OrHash).void }
      attr_writer :workspace

      sig { returns(T.nilable(String)) }
      attr_reader :workspace_id

      sig { params(workspace_id: String).void }
      attr_writer :workspace_id

      sig { returns(T.nilable(String)) }
      attr_reader :workspace_no

      sig { params(workspace_no: String).void }
      attr_writer :workspace_no

      sig do
        params(
          id: String,
          created_at: Time,
          created_by: String,
          folder_no: String,
          is_active: T::Boolean,
          is_delete: T::Boolean,
          name: String,
          parent_folder: T.nilable(String),
          path: String,
          source: String,
          updated_at: Time,
          workspace: Autorender::Folder::Workspace::OrHash,
          workspace_id: String,
          workspace_no: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        created_at: nil,
        created_by: nil,
        folder_no: nil,
        is_active: nil,
        is_delete: nil,
        name: nil,
        parent_folder: nil,
        path: nil,
        source: nil,
        updated_at: nil,
        workspace: nil,
        workspace_id: nil,
        workspace_no: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            created_by: String,
            folder_no: String,
            is_active: T::Boolean,
            is_delete: T::Boolean,
            name: String,
            parent_folder: T.nilable(String),
            path: String,
            source: String,
            updated_at: Time,
            workspace: Autorender::Folder::Workspace,
            workspace_id: String,
            workspace_no: String
          }
        )
      end
      def to_hash
      end

      class Workspace < Autorender::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Autorender::Folder::Workspace, Autorender::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :workspace_no

        sig { params(workspace_no: String).void }
        attr_writer :workspace_no

        sig { params(workspace_no: String).returns(T.attached_class) }
        def self.new(workspace_no: nil)
        end

        sig { override.returns({ workspace_no: String }) }
        def to_hash
        end
      end
    end
  end
end
