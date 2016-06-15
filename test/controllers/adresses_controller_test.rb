require 'test_helper'

class AdressesControllerTest < ActionController::TestCase
  setup do
    @adress = adresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adress" do
    assert_difference('Adress.count') do
      post :create, adress: { customer_id: @adress.customer_id, street: @adress.street, zip: @adress.zip }
    end

    assert_redirected_to adress_path(assigns(:adress))
  end

  test "should show adress" do
    get :show, id: @adress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adress
    assert_response :success
  end

  test "should update adress" do
    patch :update, id: @adress, adress: { customer_id: @adress.customer_id, street: @adress.street, zip: @adress.zip }
    assert_redirected_to adress_path(assigns(:adress))
  end

  test "should destroy adress" do
    assert_difference('Adress.count', -1) do
      delete :destroy, id: @adress
    end

    assert_redirected_to adresses_path
  end
end
