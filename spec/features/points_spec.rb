feature 'See player 2s hit points' do
  scenario 'Can display player 2s points' do
  visit('/play')
  find('a#p2_name').click
  expect(page).to have_content 'Player 2 has 12 points'
  end
end
