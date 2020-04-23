require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  setup do
    @team = teams(:one)
  end

  test "visiting the index" do
    visit teams_url
    assert_selector "h1", text: "Teams"
  end

  test "creating a Team" do
    visit teams_url
    click_on "New Team"

    fill_in "Draw", with: @team.draw
    fill_in "Goal against", with: @team.goal_against
    fill_in "Goal hit", with: @team.goal_hit
    fill_in "Loose", with: @team.loose
    fill_in "Played", with: @team.played
    fill_in "Points", with: @team.points
    fill_in "Team name", with: @team.team_name
    fill_in "Win", with: @team.win
    click_on "Create Team"

    assert_text "Team was successfully created"
    click_on "Back"
  end

  test "updating a Team" do
    visit teams_url
    click_on "Edit", match: :first

    fill_in "Draw", with: @team.draw
    fill_in "Goal against", with: @team.goal_against
    fill_in "Goal hit", with: @team.goal_hit
    fill_in "Loose", with: @team.loose
    fill_in "Played", with: @team.played
    fill_in "Points", with: @team.points
    fill_in "Team name", with: @team.team_name
    fill_in "Win", with: @team.win
    click_on "Update Team"

    assert_text "Team was successfully updated"
    click_on "Back"
  end

  test "destroying a Team" do
    visit teams_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team was successfully destroyed"
  end
end
