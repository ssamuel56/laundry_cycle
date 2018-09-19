use_bpm 110

def football_game(first_quarter)
  if first_quarter >= 3
    play chord(:E3, :minor7)
    sleep 2
    play chord(:A3, :major)
    sleep 2
    
  else
    play chord(:E3, :minor)
    sleep 2
    play chord(:A3, :major)
    sleep 2
    football_game(first_quarter + 1)
  end
end

def band_show(first_half)
  if first_half <= 2
    sleep 0.5
    sample :drum_cymbal_soft
    sleep 0.5
    sample :drum_cymbal_soft
    sleep 0.5
    sample :drum_cymbal_soft
    sleep 0.5
    sample :drum_cymbal_soft
    sleep 0.5
    sample :drum_cymbal_soft
    sleep 0.5
    sample :drum_cymbal_soft
    sleep 0.5
    sample :drum_cymbal_soft
  else
    sample :bass_hit_c
    sleep 1
    sample :bass_hit_c
    sleep 1
    sample :bass_hit_c
    sleep 1
    sample :bass_hit_c
    sleep 1
    band_show(first_half + 1)
  end
end

4.times  do
  play football_game(1)
  play band_show(1)
end
