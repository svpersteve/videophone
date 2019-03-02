require 'rails_helper'

RSpec.describe 'visiting the home page' do
  it 'works' do
    visit root_path
    expect(page).to have_content('Pages#home')
  end
end