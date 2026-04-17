# frozen_string_literal: true

require_relative "../test_helper"

class Autorender::Test::Resources::UploadsTest < Autorender::Test::ResourceTest
  def test_create_required_params
    response = @autorender.uploads.create(file: StringIO.new("Example data"), file_name: "file_name")

    assert_pattern do
      response => Autorender::Upload
    end

    assert_pattern do
      response => {
        data: Autorender::UploadData,
        success: Autorender::Internal::Type::Boolean
      }
    end
  end

  def test_create_from_url_required_params
    response = @autorender.uploads.create_from_url(remote_url: "remote_url")

    assert_pattern do
      response => Autorender::Upload
    end

    assert_pattern do
      response => {
        data: Autorender::UploadData,
        success: Autorender::Internal::Type::Boolean
      }
    end
  end
end
