require 'test_helper'

class WellWaterPumpsControllerTest < ActionController::TestCase
  setup do
    @well_water_pump = well_water_pumps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:well_water_pumps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create well_water_pump" do
    assert_difference('WellWaterPump.count') do
      post :create, well_water_pump: { pump_service: @well_water_pump.pump_service, well_solutions: @well_water_pump.well_solutions }
    end

    assert_redirected_to well_water_pump_path(assigns(:well_water_pump))
  end

  test "should show well_water_pump" do
    get :show, id: @well_water_pump
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @well_water_pump
    assert_response :success
  end

  test "should update well_water_pump" do
    patch :update, id: @well_water_pump, well_water_pump: { pump_service: @well_water_pump.pump_service, well_solutions: @well_water_pump.well_solutions }
    assert_redirected_to well_water_pump_path(assigns(:well_water_pump))
  end

  test "should destroy well_water_pump" do
    assert_difference('WellWaterPump.count', -1) do
      delete :destroy, id: @well_water_pump
    end

    assert_redirected_to well_water_pumps_path
  end
end
