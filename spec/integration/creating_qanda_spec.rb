require 'spec_helper'

feature 'Creating Q and A' do
  scenario "can create a Q and A" do
    visit '/'
    click_link 'New Q and A'
    fill_in 'Question', :with => 'What day is it?'
    fill_in 'Answer', :with => 'Monday'
    click_button 'Create Q and a'
    page.should have_content('Q and a was successfully created.')
  end
end
