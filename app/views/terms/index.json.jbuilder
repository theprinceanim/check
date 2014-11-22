json.array!(@terms) do |term|
  json.extract! term, :id, :term
  json.url term_url(term, format: :json)
end
