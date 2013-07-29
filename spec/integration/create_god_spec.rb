require 'spec_helper'

feature 'Creating Questions' do

  before do
    visit '/'
    click_link 'New God'
  end

  scenario "can create a god" do
    fill_in 'Name', :with => "Zeus"
    fill_in 'Mission statement', :with => "To rain thunder onto the earth"
    click_button 'Create God'
    god = God.find_by_name('Zeus')
    page.should have_content('God was successfully created.')
    page.current_path.should == god_path(god)
  end
end
