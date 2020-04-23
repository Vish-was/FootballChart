class TeamsController < ApplicationController
  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
    @min_diff = get_min_difference
  end

  def raw_data
    @teams = []
    # date_file = TeamsService.new('public/football.dat')
    # date_file.parse do |row|
    #   @teams << row
    # end
    teams = Team.all
    teams.each do |team|
      @teams << team.as_json
    end
    @min_diff = get_min_difference
  end

  private

  def get_min_difference
    @teams.sort_by{|team| get_difference(team["goal_hit"], team["goal_against"]).abs}.first
  end

  def get_difference(goal_hit, goal_against)
    (goal_hit - goal_against).abs
  end
end
