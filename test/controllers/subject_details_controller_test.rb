require 'test_helper'

class SubjectDetailsControllerTest < ActionController::TestCase
  setup do
    @subject_detail = subject_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_detail" do
    assert_difference('SubjectDetail.count') do
      post :create, subject_detail: { grade: @subject_detail.grade, mark: @subject_detail.mark, subject_code: @subject_detail.subject_code, subject_name: @subject_detail.subject_name }
    end

    assert_redirected_to subject_detail_path(assigns(:subject_detail))
  end

  test "should show subject_detail" do
    get :show, id: @subject_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_detail
    assert_response :success
  end

  test "should update subject_detail" do
    patch :update, id: @subject_detail, subject_detail: { grade: @subject_detail.grade, mark: @subject_detail.mark, subject_code: @subject_detail.subject_code, subject_name: @subject_detail.subject_name }
    assert_redirected_to subject_detail_path(assigns(:subject_detail))
  end

  test "should destroy subject_detail" do
    assert_difference('SubjectDetail.count', -1) do
      delete :destroy, id: @subject_detail
    end

    assert_redirected_to subject_details_path
  end
end
