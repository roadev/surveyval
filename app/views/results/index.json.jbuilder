json.array!(@results) do |result|
  json.extract! result, :id, :result_id, :survey_id, :survey_question_id, :type_response, :response
  json.url result_url(result, format: :json)
end
