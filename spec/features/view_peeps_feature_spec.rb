feature 'Viewing peeps' do

  # User Story 2
  # As a maker
  # So that I can see what others are saying
  # I want to see all peeps in reverse chronological order
  scenario 'see all peeps in reverse chronological order' do
    sign_up
    post_peep
    click_button('Write another peep')
    post_another_peep
    expect("This one is not, it is just a cat GIF").to appear_before("This peep is very profound")
  end

  # User Story 3
  # As a Maker
  # So that I can better appreciate the context of a peep
  # I want to see the time at which it was made
  scenario 'see the time peeps were posted' do
    sign_up
    post_peep
    expect(page).to have_content("posted at: ")
  end
end
