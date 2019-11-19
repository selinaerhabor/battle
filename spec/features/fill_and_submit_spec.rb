# Expects players to fill in their names (in a form), submit that form and see those names on-screen
feature 'Enter name, submit form, see name on screen' do
  scenario 'submit names entered in form' do
    visit('/')
    fill_in :p1_name, with: 'Sel'
    fill_in :p2_name, with: 'Gemini'
    click_button 'Submit'
    expect(page).to have_content 'Sel vs. Gemini'
  end
end
