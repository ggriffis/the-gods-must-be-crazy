require 'spec_helper'
feature 'Adding a guardian angel to a god' do

  let!(:god) {Factory(:god, :name => "Allah")}

  before do
    visit(god_path(god))
    click_link 'Add guardian angel'
  end

  scenario 'Create a guardian angel' do
    fill_in 'Name', :with => "Bob"
    fill_in 'Top virtue', :with => "Integrity"
    click_button "Create Guardian angel"
    page.should have_content("Guardian angel was successfully created.")
    page.should have_content("Integrity")
    page.current_path.should == god_path(god)
  end

end
