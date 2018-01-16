def sign_in_and_play
  visit('/')
  fill_in "player_1", :with => "Ed"
  fill_in "player_2", :with => "Agata"
  click_button "Begin the Battle!"
end