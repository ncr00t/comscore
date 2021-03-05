require 'rails_helper'

RSpec.describe Company, type: :model do

  before(:all) do
    @company = Company.create(name: "Test Company", logo_url: "http://pngimg.com/uploads/google/google_PNG19642.png")
  end

  it 'company should be created' do
    expect(@company).to be_valid
  end

  it 'company should be updated' do
    changed_name = "Test Company changed"
    @company.update(name: changed_name)
    expect(Company.find_by_name(changed_name)).to eq(@company)
  end

  it 'company should be destroyed' do
    @company.destroy
    expect(Company.find_by_name("Test Company changed")).to be_nil
  end
end