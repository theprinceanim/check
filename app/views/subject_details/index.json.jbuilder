json.array!(@subject_details) do |subject_detail|
  json.extract! subject_detail, :id, :subject_code, :subject_name, :mark, :grade
  json.url subject_detail_url(subject_detail, format: :json)
end
