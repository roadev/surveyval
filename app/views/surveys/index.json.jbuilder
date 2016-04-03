json.array!(@surveys) do |survey|
  json.extract! survey, :id, :survey_id, :title, :description, :consumer_id
  json.url survey_url(survey, format: :json)
end
