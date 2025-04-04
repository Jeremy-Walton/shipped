require "test_helper"

module Shipped
  class ReleasesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @release = shipped_releases(:one)
    end

    test "should get index" do
      get releases_url
      assert_response :success
    end

    test "should get new" do
      get new_release_url
      assert_response :success
    end

    test "should create release" do
      assert_difference("Release.count") do
        post releases_url, params: { release: { release_identifier: @release.release_identifier, notes: @release.notes, released_at: @release.released_at } }
      end

      assert_redirected_to release_url(Release.last)
    end

    test "should show release" do
      get release_url(@release)
      assert_response :success
    end

    test "should get edit" do
      get edit_release_url(@release)
      assert_response :success
    end

    test "should update release" do
      patch release_url(@release), params: { release: { release_identifier: @release.release_identifier, notes: @release.notes, released_at: @release.released_at } }
      assert_redirected_to release_url(@release)
    end

    test "should destroy release" do
      assert_difference("Release.count", -1) do
        delete release_url(@release)
      end

      assert_redirected_to releases_url
    end
  end
end
