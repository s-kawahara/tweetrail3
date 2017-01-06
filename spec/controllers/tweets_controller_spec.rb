require 'rails_helper'

RSpec.describe TweetsController, type: :controller do
  render_views

  describe '#index'
  it "リクエスト成功" do
    expect(response).to be_success
  end

end
