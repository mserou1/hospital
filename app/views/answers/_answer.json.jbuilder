json.extract! answer, :id, :answer, :question_id, :patient_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)
