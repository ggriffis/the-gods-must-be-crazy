require 'spec_helper'
feature 'Creating a human and assigning it to an angel' do

  let!(:god) {Factory(:god, :name => "God")}

  before do
    visit(god_path(god))
    click_link 'Add guardian angel'
    fill_in 'Name', :with => "Zeppie"
    fill_in 'Top virtue', :with => "Cleanliness"
    click_button "Create Guardian angel"
  end

  scenario 'Create a human' do
    angel = GuardianAngel.find_by_name('Zeppie')
    visit(god_guardian_angel_path(god, angel))
    click_link 'Create my human!'
    fill_in 'Name', :with => "Ginger"
    fill_in 'Purpose', :with => "To find and create and experience beauty"
    click_button 'Create Person'
    page.should have_content("Human was successfully created.")
    page.should have_content("Ginger")
    page.current_path.should == god_guardian_angel_path(god, angel)
  end

end
