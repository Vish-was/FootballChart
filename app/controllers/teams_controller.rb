class TeamsController < ApplicationController
  # GET /teams
  # GET /teams.json
  def index
    @teams = Team.all
  end

  def raw_data
    @teams = Team.all
  end
end
