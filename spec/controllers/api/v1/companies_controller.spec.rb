require 'rails_helper'

RSpec.describe Api::V1::CompaniesController do

  describe "GET #index" do
    before do
      get :index
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "JSON body response contains expected company attributes" do
      json_response = JSON.parse(response.body)
      expect(json_response.keys).to match_array([:data, :included])
    end
  end
end