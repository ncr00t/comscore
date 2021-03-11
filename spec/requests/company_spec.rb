require 'rails_helper'

RSpec.describe 'Company', type: :request do
  describe 'GET /companies' do
    it 'get all companies' do
      FactoryBot.create(:company, name: "Amazon",
                        logo_url: "http://example.com/test.png", slug: 'amazon')
      FactoryBot.create(:company, name: "Google",
                        logo_url: "http://example.com/test.png", slug: 'google')

      get('/api/v1/companies')
      expect(response).to have_http_status(200)

      companies_json = JSON.parse(response.body)
      expect(companies_json.size).to eq(2)
    end
  end

  describe 'POST /companies' do
    it 'create new company' do
      post('/api/v1/companies', params: { company: { name: "Test",
                                                     logo_url: "http://example.com/test.png", slug: 'test' }})
      expect(response).to have_http_status(:ok)

      companies_json = JSON.parse(response.body)
      expect(companies_json.size).to eq(1)
    end
  end

  describe 'DELETE /companies/:slug' do
    let!(:company) { FactoryBot.create(:company, name: "Test",
                                      logo_url: "http://example.com/test.png", slug: 'test') }

    it 'delete a company' do
      delete("/api/v1/companies/#{company.slug}")
      expect(response).to have_http_status(:no_content)
    end
  end
end