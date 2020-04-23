require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team = teams(:one)
  end

  test "should get index" do
    get teams_url
    assert_response :success
  end

  test "should get new" do
    get new_team_url
    assert_response :success
  end

  test "should create team" do
    assert_difference('Team.count') do
      post teams_url, params: { team: { draw: @team.draw, goal_against: @team.goal_against, goal_hit: @team.goal_hit, loose: @team.loose, played: @team.played, points: @team.points, team_name: @team.team_name, win: @team.win } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test "should show team" do
    get team_url(@team)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_url(@team)
    assert_response :success
  end

  test "should update team" do
    patch team_url(@team), params: { team: { draw: @team.draw, goal_against: @team.goal_against, goal_hit: @team.goal_hit, loose: @team.loose, played: @team.played, points: @team.points, team_name: @team.team_name, win: @team.win } }
    assert_redirected_to team_url(@team)
  end

  test "should destroy team" do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end

    assert_redirected_to teams_url
  end
end
