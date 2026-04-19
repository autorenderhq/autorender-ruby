# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::FilesTest < Autorender::Test::ResourceTest
  def test_retrieve
    response = @autorender.files.retrieve("fileNo")

    assert_pattern do
      response => Autorender::Models::FileRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Autorender::Models::FileRetrieveResponse::Data,
        success: Autorender::Models::FileRetrieveResponse::Success
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
        is_page_next: Autorender::Internal::Type::Boolean,
        items: ^(Autorender::Internal::Type::ArrayOf[Autorender::Models::FileListResponse::Item]),
        limit: Integer,
        page: Integer,
        total_count: Integer,
        total_pages: Integer
      }
    end
  end

  def test_delete
    response = @autorender.files.delete("fileNo")

    assert_pattern do
      response => nil
    end
  end

  def test_rename_required_params
    response = @autorender.files.rename("fileNo", name: "name")

    assert_pattern do
      response => Autorender::Models::FileRenameResponse
    end

    assert_pattern do
      response => {
        data: Autorender::Models::FileRenameResponse::Data,
        success: Autorender::Models::FileRenameResponse::Success
      }
    end
  end
end
