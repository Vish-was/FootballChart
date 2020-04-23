require 'rails_helper'

RSpec.describe TeamsService, type: :service do
  let(:filepath) { 'public/football.dat' }

  describe "#Parse data from file" do
    it "Parse Data" do
      response = TeamsService.new(filepath).parse
      expect(response.class).to eq (Array)
    end
  end
end

