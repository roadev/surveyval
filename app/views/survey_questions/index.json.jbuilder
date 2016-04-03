json.array!(@survey_questions) do |survey_question|
  json.extract! survey_question, :id, :survey_question_id, :content, :survey_id, :cardinal, :type_question
  json.url survey_question_url(survey_question, format: :json)
end
