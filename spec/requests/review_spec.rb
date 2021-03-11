require 'rails_helper'

RSpec.describe 'Review', type: :request do
  let!(:company) { FactoryBot.create(:company, name: "Test",
                                     logo_url: "http://example.com/test.png", slug: 'test') }
  describe 'POST /reviews' do
    it 'create new review' do
      post('/api/v1/reviews', params: { review: { title: "Test", description: "description",
                                                  rank: 3, company_id: company.id }})
      expect(response).to have_http_status(:ok)

      reviews_json = JSON.parse(response.body)
      expect(reviews_json.size).to eq(1)
    end
  end

  describe 'DELETE /reviews/:id' do
    let!(:review) { FactoryBot.create(:review,  title: "Test", description: "description",
                                       rank: 3, company_id: company.id) }
    it 'delete a review' do
      delete("/api/v1/reviews/#{review.id}")
      expect(response).to have_http_status(:no_content)
    end
  end
end