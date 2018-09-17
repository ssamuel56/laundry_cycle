def car_wash(wata)
  if wata >= 10
    play 70
    play 60
    play 50
    sleep 1
  else
    play 70
    play 45
    sleep 1
    play 15
    car_wash(wata + 1)
  end
end

def supplies
  sample :ambi_haunted_hum
end

def pre_wash
  sample :ambi_glass_hum
end

def scrub
  sleep 4
end

def post_wash
  sample :ambi_swoosh
  sleep 1
end

def sudz?
  1 == [1, 2].choose
end

3.times do
  car_wash(1)
  pre_wash
  scrub if sudz?
  post_wash
end

