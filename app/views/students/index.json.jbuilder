json.array!(@students) do |student|
  json.extract! student, :id, :exams_number, :first_name, :last_name, :username, :password
  json.url student_url(student, format: :json)
end
