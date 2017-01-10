require 'rails_helper'

RSpec.describe Relationship, type: :model do
  describe 'Association' do
    it { should belong_to(:follower) }
    it { should belong_to(:following) }
  end
end
