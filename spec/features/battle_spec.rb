feature 'Filling in names' do
  scenario 'Players enter their names and see them on screen' do
    visit('/')
    fill_in "player_1", :with => "Ed"
    fill_in "player_2", :with => "Agata"
    click_button "Begin the Battle!"
    expect(page).to have_text("Player 1: Ed")
    expect(page).to have_text("Player 2: Agata")
  end
end

feature 'Show HP for each player' do
  scenario 'Display HP on the screen' do
    visit('/')
    fill_in "player_1", :with => "Ed"
    fill_in "player_2", :with => "Agata"
    click_button "Begin the Battle!"
    expect(page).to have_text("Player 2 HP: 100")
  end
end
