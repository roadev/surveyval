require 'test_helper'

class ResultsControllerTest < ActionController::TestCase
  setup do
    @result = result(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:result)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create result" do
    assert_difference('Result.count') do
      post :create, result: { response: @result.response, result_id: @result.result_id, survey_id: @result.survey_id, survey_question_id: @result.survey_question_id, type_response: @result.type_response }
    end

    assert_redirected_to result_path(assigns(:result))
  end

  test "should show result" do
    get :show, id: @result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @result
    assert_response :success
  end

  test "should update result" do
    patch :update, id: @result, result: { response: @result.response, result_id: @result.result_id, survey_id: @result.survey_id, survey_question_id: @result.survey_question_id, type_response: @result.type_response }
    assert_redirected_to result_path(assigns(:result))
  end

  test "should destroy result" do
    assert_difference('Result.count', -1) do
      delete :destroy, id: @result
    end

    assert_redirected_to results_path
  end
end
