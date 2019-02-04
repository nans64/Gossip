require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do

  describe "GET #index_welcome" do
    it "returns http success" do
      get :index_welcome
      expect(response).to have_http_status(:success)
    end
  end

end
