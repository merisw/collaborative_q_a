require 'test_helper'

class QAndAsControllerTest < ActionController::TestCase
  setup do
    @q_and_a = q_and_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:q_and_as)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create q_and_a" do
    assert_difference('QAndA.count') do
      post :create, q_and_a: { answer: @q_and_a.answer, question: @q_and_a.question }
    end

    assert_redirected_to q_and_a_path(assigns(:q_and_a))
  end

  test "should show q_and_a" do
    get :show, id: @q_and_a
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @q_and_a
    assert_response :success
  end

  test "should update q_and_a" do
    put :update, id: @q_and_a, q_and_a: { answer: @q_and_a.answer, question: @q_and_a.question }
    assert_redirected_to q_and_a_path(assigns(:q_and_a))
  end

  test "should destroy q_and_a" do
    assert_difference('QAndA.count', -1) do
      delete :destroy, id: @q_and_a
    end

    assert_redirected_to q_and_as_path
  end
end
