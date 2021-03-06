require 'rails_helper'

RSpec.describe Review, type: :model do
  describe 'relationships' do
    it { should belong_to(:airline) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:score) }
  end
end
