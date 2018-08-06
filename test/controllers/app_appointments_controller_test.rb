require 'test_helper'

class AppAppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @app_appointment = app_appointments(:one)
  end

  test "should get index" do
    get app_appointments_url
    assert_response :success
  end

  test "should get new" do
    get new_app_appointment_url
    assert_response :success
  end

  test "should create app_appointment" do
    assert_difference('AppAppointment.count') do
      post app_appointments_url, params: { app_appointment: { AppointmentBody: @app_appointment.AppointmentBody, DatenTime: @app_appointment.DatenTime } }
    end

    assert_redirected_to app_appointment_url(AppAppointment.last)
  end

  test "should show app_appointment" do
    get app_appointment_url(@app_appointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_app_appointment_url(@app_appointment)
    assert_response :success
  end

  test "should update app_appointment" do
    patch app_appointment_url(@app_appointment), params: { app_appointment: { AppointmentBody: @app_appointment.AppointmentBody, DatenTime: @app_appointment.DatenTime } }
    assert_redirected_to app_appointment_url(@app_appointment)
  end

  test "should destroy app_appointment" do
    assert_difference('AppAppointment.count', -1) do
      delete app_appointment_url(@app_appointment)
    end

    assert_redirected_to app_appointments_url
  end
end
