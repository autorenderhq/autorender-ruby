# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::FilesTest < Autorender::Test::ResourceTest
  def test_retrieve
    response = @autorender.files.retrieve("2353377462")

    assert_pattern do
      response => Autorender::FileObject
    end

    assert_pattern do
      response => {
        data: Autorender::FileObject::Data | nil,
        success: Autorender::Internal::Type::Boolean | nil
      }
    end
  end

  def test_list
    response = @autorender.files.list

    assert_pattern do
      response => Autorender::Models::FileListResponse
    end

    assert_pattern do
      response => {
        files: ^(Autorender::Internal::Type::ArrayOf[Autorender::FileListItem]),
        meta: Autorender::Models::FileListResponse::Meta
      }
    end
  end

  def test_delete
    response = @autorender.files.delete("2338056701")

    assert_pattern do
      response => Autorender::Models::FileDeleteResponse
    end

    assert_pattern do
      response => {
        message: String | nil
      }
    end
  end

  def test_rename_required_params
    response = @autorender.files.rename("2338045312", name: "demo")

    assert_pattern do
      response => Autorender::Models::FileRenameResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        created_at: Time | nil,
        created_by: String | nil,
        extension: String | nil,
        file_no: String | nil,
        file_size: Integer | nil,
        folder_id: String | nil,
        format_: String | nil,
        height: Integer | nil,
        is_active: Autorender::Internal::Type::Boolean | nil,
        is_default: Autorender::Internal::Type::Boolean | nil,
        is_delete: Autorender::Internal::Type::Boolean | nil,
        meta_data: ^(Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]) | nil,
        name: String | nil,
        orientation: String | nil,
        original_url: String | nil,
        path: String | nil,
        source: String | nil,
        transform_string: String | nil,
        updated_at: Time | nil,
        url: String | nil,
        width: Integer | nil,
        workspace_id: String | nil,
        workspace_no: String | nil
      }
    end
  end
end
