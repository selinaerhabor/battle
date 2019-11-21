feature 'Attacking' do

  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Sel hit Gemini'
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Gemini: 100HP'
    expect(page).to have_content 'Gemini: 90HP'
  end
  
end
