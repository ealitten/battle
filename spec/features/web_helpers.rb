def sign_in_and_play
  visit('/')
  fill_in "player_1_name", :with => "Ed"
  fill_in "player_2_name", :with => "Agata"
  click_button "Begin the Battle!"
end