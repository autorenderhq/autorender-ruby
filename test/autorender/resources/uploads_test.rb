# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::UploadsTest < Autorender::Test::ResourceTest
  def test_create_required_params
    response = @autorender.uploads.create(file: StringIO.new("Example data"), file_name: "product.jpg")

    assert_pattern do
      response => Autorender::Models::UploadCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        custom_id: String | nil,
        file_no: String,
        folder_no: String | nil,
        height: Integer | nil,
        is_duplicate: Autorender::Internal::Type::Boolean,
        is_private: Autorender::Internal::Type::Boolean,
        metadata: ^(Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]) | nil,
        mime_type: String,
        name: String,
        path: String,
        size: Integer,
        tags: ^(Autorender::Internal::Type::ArrayOf[String]),
        upload_source: String,
        url: String,
        width: Integer | nil,
        workspace_id: String,
        format_: String | nil,
        hash_: String | nil
      }
    end
  end

  def test_create_from_url_required_params
    response = @autorender.uploads.create_from_url(remote_url: "https://example.com")

    assert_pattern do
      response => Autorender::Models::UploadCreateFromURLResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        custom_id: String | nil,
        file_no: String,
        folder_no: String | nil,
        height: Integer | nil,
        is_duplicate: Autorender::Internal::Type::Boolean,
        is_private: Autorender::Internal::Type::Boolean,
        metadata: ^(Autorender::Internal::Type::HashOf[Autorender::Internal::Type::Unknown]) | nil,
        mime_type: String,
        name: String,
        path: String,
        size: Integer,
        tags: ^(Autorender::Internal::Type::ArrayOf[String]),
        upload_source: String,
        url: String,
        width: Integer | nil,
        workspace_id: String,
        format_: String | nil,
        hash_: String | nil
      }
    end
  end
end
