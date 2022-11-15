require 'rails_helper'

RSpec.describe Label, type: :model do
  subject {
    FactoryBot.build(:label)
  }

  describe 'associations' do
    it { should have_many(:product_labels) }
    it { should have_many(:products).through(:product_labels) }
  end

  describe 'validations' do
  end
end
