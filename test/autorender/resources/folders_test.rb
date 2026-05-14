# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::FoldersTest < Autorender::Test::ResourceTest
  def test_create_required_params
    response = @autorender.folders.create(name: "x")

    assert_pattern do
      response => Autorender::Models::FolderCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        folder_no: String,
        name: String,
        parent_folder_no: String | nil,
        path: String,
        updated_at: Time | nil
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
        folders: ^(Autorender::Internal::Type::ArrayOf[Autorender::Models::FolderListResponse::Folder])
      }
    end
  end

  def test_delete
    response = @autorender.folders.delete("folderNo")

    assert_pattern do
      response => nil
    end
  end

  def test_rename_required_params
    response = @autorender.folders.rename("folderNo", name: "name")

    assert_pattern do
      response => Autorender::Models::FolderRenameResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        folder_no: String,
        name: String,
        parent_folder_no: String | nil,
        path: String,
        updated_at: Time | nil
      }
    end
  end
end
