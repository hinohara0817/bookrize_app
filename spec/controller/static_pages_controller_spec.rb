require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe '#home' do
    it "responds successfully" do
      expect(response).to be_successful
    end
  end
end
