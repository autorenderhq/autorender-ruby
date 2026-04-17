# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::FoldersTest < Autorender::Test::ResourceTest
  def test_create_required_params
    response = @autorender.folders.create(name: "name")

    assert_pattern do
      response => Autorender::Models::FolderCreateResponse
    end

    assert_pattern do
      response => {
        folder_no: String | nil,
        name: String | nil
      }
    end
  end

  def test_list
    response = @autorender.folders.list

    assert_pattern do
      response => Autorender::Models::FolderListResponse
    end

    assert_pattern do
      response => {
        folders: ^(Autorender::Internal::Type::ArrayOf[Autorender::FolderListItem]) | nil
      }
    end
  end

  def test_delete
    response = @autorender.folders.delete("my8JeLg4tr")

    assert_pattern do
      response => Autorender::Models::FolderDeleteResponse
    end

    assert_pattern do
      response => {
        message: String | nil
      }
    end
  end

  def test_rename_required_params
    response = @autorender.folders.rename("53855hxPoq", name: "name")

    assert_pattern do
      response => Autorender::Folder
    end

    assert_pattern do
      response => {
        id: String | nil,
        created_at: Time | nil,
        folder_no: String | nil,
        is_active: Autorender::Internal::Type::Boolean | nil,
        is_delete: Autorender::Internal::Type::Boolean | nil,
        name: String | nil,
        parent_folder: String | nil,
        path: String | nil,
        updated_at: Time | nil,
        workspace: Autorender::Folder::Workspace | nil,
        workspace_id: String | nil,
        workspace_no: String | nil
      }
    end
  end
end
