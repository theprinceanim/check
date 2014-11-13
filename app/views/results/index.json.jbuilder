json.array!(@results) do |result|
  json.extract! result, :id, :subject_code, :subject_name, :mark
  json.url result_url(result, format: :json)
end
