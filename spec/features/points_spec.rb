feature 'See player 2s hit points' do
  scenario 'Can display player 2s points' do
  visit('/')
  fill_in :p1_name, with: 'Sel'
  fill_in :p2_name, with: 'Gemini'
  click_button 'Submit'
  # find('a#p2_name').click
  expect(page).to have_content 'Gemini has 12 points'
  end
end
