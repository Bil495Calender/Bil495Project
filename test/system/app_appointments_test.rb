require "application_system_test_case"

class AppAppointmentsTest < ApplicationSystemTestCase
  setup do
    @app_appointment = app_appointments(:one)
  end

  test "visiting the index" do
    visit app_appointments_url
    assert_selector "h1", text: "App Appointments"
  end

  test "creating a App appointment" do
    visit app_appointments_url
    click_on "New App Appointment"

    fill_in "Appointmentbody", with: @app_appointment.AppointmentBody
    fill_in "Datentime", with: @app_appointment.DatenTime
    click_on "Create App appointment"

    assert_text "App appointment was successfully created"
    click_on "Back"
  end

  test "updating a App appointment" do
    visit app_appointments_url
    click_on "Edit", match: :first

    fill_in "Appointmentbody", with: @app_appointment.AppointmentBody
    fill_in "Datentime", with: @app_appointment.DatenTime
    click_on "Update App appointment"

    assert_text "App appointment was successfully updated"
    click_on "Back"
  end

  test "destroying a App appointment" do
    visit app_appointments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "App appointment was successfully destroyed"
  end
end
