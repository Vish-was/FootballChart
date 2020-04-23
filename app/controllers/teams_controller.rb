class TeamsController < ApplicationController

  def index
    @teams = Team.all
    @min_diff_team = get_min_diff("goal_hit", "goal_against")
  end

  def raw_data
    # @teams = []
    # date_file = TeamsService.new('public/football.dat')
    # date_file.parse do |row|
    #   @teams << row
    # end
    # @min_diff_team = get_min_diff("f", "a")
    @teams = File.open("public/football.dat").read
  end

  private

  def get_min_diff(goal_hit, goal_against)
    @teams.sort_by{|team| get_diff(team[goal_hit].to_i, team[goal_against].to_i).abs}.first
  end

  def get_diff(goal_hit, goal_against)
    (goal_hit - goal_against).abs
  end
end
