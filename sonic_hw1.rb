use_bpm 110

def football_game(quarters)
  if quarters >= 3
    play chord(:E3, :minor7)
    sleep 2
    play chord(:A3, :major)
    sleep 2
    
  else
    play chord(:E3, :minor)
    sleep 2
    play chord(:A3, :major7)
    sleep 2
    football_game(quarters + 1)
  end
end

4.times  do
  play football_game(1)
end
