require 'rails_helper'

RSpec.describe Review, type: :model do

  before(:all) do
    company = Company.first
    @review = Review.create({
                              title: 'Test title',
                              description: 'Test description',
                              rank: 5,
                              company: company
                            })
  end

  it 'review should be created' do
    expect(@review).to be_valid
  end

  it 'review should be updated' do
    changed_title = "Test title changed"
    @review.update(title: changed_title)
    expect(@review.title).to eq(changed_title)
  end

  it 'review should be destroyed' do
    @review.destroy
    expect(Review.find_by_title("Test title changed")).to be_nil
  end
end