# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Show', type: :feature do
  it 'user signs up and can be accessed by id' do
    visit '/users/sign_up'
    fill_in 'user_email', with: 'example@example.com'
    fill_in 'user_password', with: 'examplepassword'
    fill_in 'user_password_confirmation', with: 'examplepassword'
    click_button 'Sign up'

    expect(page).to have_content('My shopping lists')
  end
end
