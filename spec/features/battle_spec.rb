feature 'Filling in names' do
  scenario 'Players enter their names and see them on screen' do
    sign_in_and_play
    expect(page).to have_text("Player 1: Ed")
    expect(page).to have_text("Player 2: Agata")
  end
end

feature 'Show HP for Player 2' do
  scenario 'Display HP on the screen' do
    sign_in_and_play
    expect(page).to have_text("Player 2 HP: 100")
  end
end

feature 'Attacking Player 2' do
  scenario 'Player 1 clicks: Attack & gets confirmation' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_text("Ed attacks Agata!")
  end

end
