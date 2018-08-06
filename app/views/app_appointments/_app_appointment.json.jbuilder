json.extract! app_appointment, :id, :AppointmentBody, :DatenTime, :created_at, :updated_at
json.url app_appointment_url(app_appointment, format: :json)
