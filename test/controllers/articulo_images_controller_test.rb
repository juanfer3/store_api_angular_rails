require 'test_helper'

class ArticuloImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articulo_image = articulo_images(:one)
  end

  test "should get index" do
    get articulo_images_url, as: :json
    assert_response :success
  end

  test "should create articulo_image" do
    assert_difference('ArticuloImage.count') do
      post articulo_images_url, params: { articulo_image: { articulo_id: @articulo_image.articulo_id } }, as: :json
    end

    assert_response 201
  end

  test "should show articulo_image" do
    get articulo_image_url(@articulo_image), as: :json
    assert_response :success
  end

  test "should update articulo_image" do
    patch articulo_image_url(@articulo_image), params: { articulo_image: { articulo_id: @articulo_image.articulo_id } }, as: :json
    assert_response 200
  end

  test "should destroy articulo_image" do
    assert_difference('ArticuloImage.count', -1) do
      delete articulo_image_url(@articulo_image), as: :json
    end

    assert_response 204
  end
end
