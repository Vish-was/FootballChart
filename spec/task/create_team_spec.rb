# frozen_string_literal: true

require 'rails_helper'
Rails.application.load_tasks

describe 'create a team record from raw data file' do

  describe 'create team record' do
    it 'creates team' do
      count = Team.all.count
      Rake::Task['create_team:get_team'].invoke
      expect(Team.all.count).to be > count
    end
  end
end
