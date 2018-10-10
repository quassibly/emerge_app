require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get updates" do
    get pages_updates_url
    assert_response :success
  end

  test "should get profiles" do
    get pages_profiles_url
    assert_response :success
  end

  test "should get opinions" do
    get pages_opinions_url
    assert_response :success
  end

  test "should get video" do
    get pages_video_url
    assert_response :success
  end

  test "should get podcast" do
    get pages_podcast_url
    assert_response :success
  end

  test "should get events" do
    get pages_events_url
    assert_response :success
  end

  test "should get spaces" do
    get pages_spaces_url
    assert_response :success
  end

end
