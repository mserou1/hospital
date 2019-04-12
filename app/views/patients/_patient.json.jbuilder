json.extract! patient, :id, :first_name, :last_name, :date_of_visit, :reason_for_visit, :volunteer_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
