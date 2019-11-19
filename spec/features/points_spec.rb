feature 'See player 2s hit points' do
  scenario 'Can display player 2s points' do
  sign_in_and_play
  # find('a#p2_name').click
  expect(page).to have_content 'Gemini has 12 points'
  end
end
