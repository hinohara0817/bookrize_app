require 'rails_helper'

RSpec.feature "ヘッダー要素が表示されているか", type: :feature do

  let(:user) { create(:user) }

  scenario 'ユーザーがログインしていない時のリンク' do
    visit root_path
    expect(page).to have_link 'home'
    expect(page).to have_link 'about'
    expect(page).to have_link 'log_in'
  end

  scenario 'ユーザーがログインしている時のリンク' do
    visit root_path
    click_on 'ログイン'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'ログイン'
    visit root_path
    expect(page).to have_link 'bookrize'
    expect(page).to have_link 'my_page'
    expect(page).to have_link 'log_out'
  end
end
