require 'test_helper'

class UnitsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:units)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_units
    assert_difference('Units.count') do
      post :create, :units => { }
    end

    assert_redirected_to units_path(assigns(:units))
  end

  def test_should_show_units
    get :show, :id => units(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => units(:one).id
    assert_response :success
  end

  def test_should_update_units
    put :update, :id => units(:one).id, :units => { }
    assert_redirected_to units_path(assigns(:units))
  end

  def test_should_destroy_units
    assert_difference('Units.count', -1) do
      delete :destroy, :id => units(:one).id
    end

    assert_redirected_to units_path
  end
end
