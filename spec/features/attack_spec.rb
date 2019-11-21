feature 'Attacking' do

  scenario 'to attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Sel hit Gemini'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Gemini: 80HP'
    expect(page).to have_content 'Gemini: 70HP'
  end

end
