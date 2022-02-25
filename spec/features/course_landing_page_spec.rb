require 'rails_helper'

RSpec.describe 'Course Landing Page' do
  let!(:course)  { create(:course, price: 1000) }
  it 'renders a landing page with info about the course' do
    visit root_path
    expect(page).to have_content(course.title)

    expect(page).to have_content('$10.00')
  end
end
