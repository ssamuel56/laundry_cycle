use_bpm 110

def band_show
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
end


def first_quarter(quarter_one)
  if quarter_one >= 2
    play chord(:E3, :minor7)
    sleep 2
    play chord(:A3, :minor)
    sleep 2
  else
    play chord(:E3, :minor)
    sleep 2
    play chord(:A3, :minor)
    sleep 2
    first_quarter(quarter_one + 1)
  end
end

def second_quarter(quarter_two)
  if quarter_two >= 3
    play chord(:D3, :minor)
    sleep 1
    play chord(:E3, :minor)
    sleep 0.5
    play chord(:A3, :minor)
    sleep 1.5
  else
    play band_show
    sleep 3
    second_quarter(quarter_two + 1)
  end
end

def third_quarter(quarter_three)
  if quarter_three >= 4
    play chord(:D3, :minor)
    sleep 1
    play chord(:E3, :minor)
    sleep 1
    play chord(:G3, :minor)
  else
    play chord(:E3, :minor)
    sleep 1
    play chord(:G2, :minor)
    sleep 0.5
    play chord(:A3, :minor)
    sleep 1.5
    third_quarter(quarter_three + 1)
  end
end

def fourth_quarter
  play chord(:G3, :minor7)
  sleep 1
  play chord(:A3,:minor)
  sleep 2
  play chord(:E3, :minor)
end



1.times do
  live_loop :scale do
    4.times do
      play scale(:e3, :minor).tick
      sleep 0.5
    end
  end
  
  live_loop :kick, sync: :scale do
    4.times do
      sample :bd_haus
      sleep 1
    end
  end
  
  4.times do
    play first_quarter(1)
    play second_quarter(1)
    play third_quarter(1)
    play fourth_quarter
  end
end
