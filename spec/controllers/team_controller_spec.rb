require 'rails_helper'

RSpec.describe TeamController, type: :controller do

  describe "GET #index_team" do
    it "returns http success" do
      get :index_team
      expect(response).to have_http_status(:success)
    end
  end

end
