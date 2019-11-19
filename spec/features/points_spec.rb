feature 'See players hint points' do
  scenario 'Can display player 2s points' do
  visit('/play')
  click_button 'Show Points'
  expect(page).to have_content 'Player 2 has 12 points'
  end
end
