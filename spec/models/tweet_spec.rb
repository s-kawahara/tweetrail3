require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe 'Association' do
    it { should belong_to(:user) }
    it { should have_many(:likes) }
  end
  describe "#content" do
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_length_of(:content) }
  end

  describe "#user_id" do
    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_uniqueness_of(:user_id) }
  end
end
