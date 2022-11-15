require 'rails_helper'

RSpec.describe ProductLabel, type: :model do
  subject {
    FactoryBot.build(:product_label)
  }

  describe 'associations' do
    it { should belong_to(:label) }
    it { should belong_to(:product) }
  end

  describe 'validations' do
  end
end
