def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Sel'
  fill_in :p2_name, with: 'Gemini'
  click_button 'Submit'
end
