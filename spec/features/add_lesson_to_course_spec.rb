require 'rails_helper'

RSpec.describe 'Add a lesson to a Course' do
  let!(:course)  { create(:course, price: 1000) }

  it 'adds a lesson to an existing course' do
    visit '/courses'
    expect(page).to have_content(course.title)

    click_on('Show this course')

    within '#lesson-form' do
      fill_in 'Title', with: 'Lesson 1'
      fill_in 'Description', with: 'This is a description for the lesson'

      click_on 'Submit'
    end
    expect(page).to have_content('Lesson 1')
  end
end
