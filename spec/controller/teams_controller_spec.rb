require 'rails_helper'

RSpec.describe TeamsController, type: :controller do
  let(:id) { '1' }
  
  # Routes
  describe 'Routes' do
    it { expect(get: '/teams').to route_to({ controller: 'teams', action: 'index' }) }
    it { expect(get: '/raw_data').to route_to({ controller: 'teams', action: 'raw_data' }) }
  end
  
  describe 'List all Teams' do
    describe "#index", search: true do
      it 'List all Teams ' do
        get :index
        expect(response.status).to be 200
      end
    end
	end
	
	describe 'List all Teams as raw data' do
    describe "#raw_data", search: true do
      it 'List all Teams as raw ' do
        get :raw_data
        expect(response.status).to be 200
      end
    end
  end

end
