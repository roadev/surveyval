json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer_id, :content, :survey_question_id
  json.url answer_url(answer, format: :json)
end
