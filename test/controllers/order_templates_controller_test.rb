require 'test_helper'

class OrderTemplatesControllerTest < ActionController::TestCase
  setup do
    @order_template = order_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_template" do
    assert_difference('OrderTemplate.count') do
      post :create, order_template: { order_id: @order_template.order_id, template_id: @order_template.template_id }
    end

    assert_redirected_to order_template_path(assigns(:order_template))
  end

  test "should show order_template" do
    get :show, id: @order_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_template
    assert_response :success
  end

  test "should update order_template" do
    patch :update, id: @order_template, order_template: { order_id: @order_template.order_id, template_id: @order_template.template_id }
    assert_redirected_to order_template_path(assigns(:order_template))
  end

  test "should destroy order_template" do
    assert_difference('OrderTemplate.count', -1) do
      delete :destroy, id: @order_template
    end

    assert_redirected_to order_templates_path
  end
end
