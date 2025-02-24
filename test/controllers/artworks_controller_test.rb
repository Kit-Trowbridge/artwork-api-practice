require "test_helper"

class ArtworksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artworks_index_url
    assert_response :success
  end

  test "should get show" do
    get artworks_show_url
    assert_response :success
  end

  test "should get new" do
    get artworks_new_url
    assert_response :success
  end

  test "should get create" do
    get artworks_create_url
    assert_response :success
  end

  test "should get edit" do
    get artworks_edit_url
    assert_response :success
  end

  test "should get update" do
    get artworks_update_url
    assert_response :success
  end

  test "should get delete" do
    get artworks_delete_url
    assert_response :success
  end
end
