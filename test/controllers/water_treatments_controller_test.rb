require 'test_helper'

class WaterTreatmentsControllerTest < ActionController::TestCase
  setup do
    @water_treatment = water_treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:water_treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create water_treatment" do
    assert_difference('WaterTreatment.count') do
      post :create, water_treatment: { house_system: @water_treatment.house_system, reverse_osmosis: @water_treatment.reverse_osmosis }
    end

    assert_redirected_to water_treatment_path(assigns(:water_treatment))
  end

  test "should show water_treatment" do
    get :show, id: @water_treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @water_treatment
    assert_response :success
  end

  test "should update water_treatment" do
    patch :update, id: @water_treatment, water_treatment: { house_system: @water_treatment.house_system, reverse_osmosis: @water_treatment.reverse_osmosis }
    assert_redirected_to water_treatment_path(assigns(:water_treatment))
  end

  test "should destroy water_treatment" do
    assert_difference('WaterTreatment.count', -1) do
      delete :destroy, id: @water_treatment
    end

    assert_redirected_to water_treatments_path
  end
end
