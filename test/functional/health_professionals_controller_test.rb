require 'test_helper'

class HealthProfessionalsControllerTest < ActionController::TestCase
  setup do
    @health_professional = health_professionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_professionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_professional" do
    assert_difference('HealthProfessional.count') do
      post :create, health_professional: { address: @health_professional.address, firstname: @health_professional.firstname, lastname: @health_professional.lastname, latitude: @health_professional.latitude, longitude: @health_professional.longitude, speciality: @health_professional.speciality }
    end

    assert_redirected_to health_professional_path(assigns(:health_professional))
  end

  test "should show health_professional" do
    get :show, id: @health_professional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_professional
    assert_response :success
  end

  test "should update health_professional" do
    put :update, id: @health_professional, health_professional: { address: @health_professional.address, firstname: @health_professional.firstname, lastname: @health_professional.lastname, latitude: @health_professional.latitude, longitude: @health_professional.longitude, speciality: @health_professional.speciality }
    assert_redirected_to health_professional_path(assigns(:health_professional))
  end

  test "should destroy health_professional" do
    assert_difference('HealthProfessional.count', -1) do
      delete :destroy, id: @health_professional
    end

    assert_redirected_to health_professionals_path
  end
end
