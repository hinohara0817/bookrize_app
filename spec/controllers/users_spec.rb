require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "#show" do
    let(:user) { create(:user) }

    before { get :show, params: { id: user.id } }
    it "responds successfully" do
      expect(response).to be_successful
    end
  end
end
