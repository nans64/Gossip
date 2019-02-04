require 'rails_helper'

RSpec.describe ContactController, type: :controller do

  describe "GET #index_contact" do
    it "returns http success" do
      get :index_contact
      expect(response).to have_http_status(:success)
    end
  end

end
