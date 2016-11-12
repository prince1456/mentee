require 'test_helper'

class MentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mente = mentes(:one)
  end

  test "should get index" do
    get mentes_url
    assert_response :success
  end

  test "should get new" do
    get new_mente_url
    assert_response :success
  end

  test "should create mente" do
    assert_difference('Mente.count') do
      post mentes_url, params: { mente: { age: @mente.age, description: @mente.description, email: @mente.email, image: @mente.image, interests: @mente.interests, langitude: @mente.langitude, latitude: @mente.latitude, location: @mente.location, mentor_type: @mente.mentor_type, name: @mente.name, question: @mente.question } }
    end

    assert_redirected_to mente_url(Mente.last)
  end

  test "should show mente" do
    get mente_url(@mente)
    assert_response :success
  end

  test "should get edit" do
    get edit_mente_url(@mente)
    assert_response :success
  end

  test "should update mente" do
    patch mente_url(@mente), params: { mente: { age: @mente.age, description: @mente.description, email: @mente.email, image: @mente.image, interests: @mente.interests, langitude: @mente.langitude, latitude: @mente.latitude, location: @mente.location, mentor_type: @mente.mentor_type, name: @mente.name, question: @mente.question } }
    assert_redirected_to mente_url(@mente)
  end

  test "should destroy mente" do
    assert_difference('Mente.count', -1) do
      delete mente_url(@mente)
    end

    assert_redirected_to mentes_url
  end
end
