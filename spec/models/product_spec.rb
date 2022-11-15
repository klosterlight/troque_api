require 'rails_helper'

RSpec.describe Product, type: :model do
  subject {
    FactoryBot.build(:product)
  }

  describe 'associations' do
    it { should have_many(:product_labels) }
    it { should have_many(:labels).through(:product_labels) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end

  it do
    should define_enum_for(:status).
      with_values([:pending, :published])
  end
end
