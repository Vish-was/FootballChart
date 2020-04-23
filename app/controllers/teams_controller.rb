class TeamsController < ApplicationController
  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
  end

  def raw_data
    @teams = []
    date_file = TeamsService.new('public/football.dat')
    date_file.parse do |row|
      @teams << row
    end
  end
end
