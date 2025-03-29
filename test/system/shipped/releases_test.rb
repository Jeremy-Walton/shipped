require "application_system_test_case"

module Shipped
  class ReleasesTest < ApplicationSystemTestCase
    setup do
      @release = shipped_releases(:one)
    end

    test "visiting the index" do
      visit releases_url
      assert_selector "h1", text: "Releases"
    end

    test "should create release" do
      visit releases_url
      click_on "New release"

      fill_in "Commit sha", with: @release.commit_sha
      fill_in "Notes", with: @release.notes
      fill_in "Released at", with: @release.released_at
      click_on "Create Release"

      assert_text "Release was successfully created"
      click_on "Back"
    end

    test "should update Release" do
      visit release_url(@release)
      click_on "Edit this release", match: :first

      fill_in "Commit sha", with: @release.commit_sha
      fill_in "Notes", with: @release.notes
      fill_in "Released at", with: @release.released_at.to_s
      click_on "Update Release"

      assert_text "Release was successfully updated"
      click_on "Back"
    end

    test "should destroy Release" do
      visit release_url(@release)
      click_on "Destroy this release", match: :first

      assert_text "Release was successfully destroyed"
    end
  end
end
