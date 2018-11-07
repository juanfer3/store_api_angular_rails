require 'test_helper'

class ArticulosImagenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articulo_imagen = articulos_imagen(:one)
  end

  test "should get index" do
    get articulos_imagen_url, as: :json
    assert_response :success
  end

  test "should create articulo_imagen" do
    assert_difference('ArticuloImagen.count') do
      post articulos_imagen_url, params: { articulo_imagen: { articulo_id: @articulo_imagen.articulo_id } }, as: :json
    end

    assert_response 201
  end

  test "should show articulo_imagen" do
    get articulo_imagen_url(@articulo_imagen), as: :json
    assert_response :success
  end

  test "should update articulo_imagen" do
    patch articulo_imagen_url(@articulo_imagen), params: { articulo_imagen: { articulo_id: @articulo_imagen.articulo_id } }, as: :json
    assert_response 200
  end

  test "should destroy articulo_imagen" do
    assert_difference('ArticuloImagen.count', -1) do
      delete articulo_imagen_url(@articulo_imagen), as: :json
    end

    assert_response 204
  end
end
