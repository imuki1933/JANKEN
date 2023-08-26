puts "最初はグー！じゃんけん・・・・"

def janken
  puts "0(グー)1(チョキ)2(パー)"

    player_hand = gets.to_i
    program_hand = rand(3)

    jankens = ["グー", "チョキ","パー"]

  puts "ほい！"
  puts "------------------------------"
  puts "あなたの手:#{jankens[player_hand]}"
  puts "相手の手:#{jankens[program_hand]}"
  puts "------------------------------"

  if player_hand == program_hand
    puts "あいこで"
    return true

  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "じゃんけんはあなたの勝ち！(^o^)"
    acchimuite_hoi_finger


  else
    puts "じゃんけんはあなたの負けm(_ _)m"
    acchimuite_hoi_face
  end
end


def acchimuite_hoi_finger

  puts "あっち向いて〜・・・"
  puts "指の方向  0(上)1(右)2(下)3(左)"

    player_direction = gets.to_i
    program_direction = rand(4)

    direction = ["上", "右","下","左"]
    puts "------------------------------"
    puts "あなたの指の方向:#{direction[player_direction]}"
    puts "相手の顔の方向:#{direction[program_direction]}"
    puts "------------------------------"


  if player_direction == program_direction
    puts "あなたの勝ち!"
  else
    puts "惜しい！最初はグー、じゃんけん・・・"
    return true
  end
  
end


def acchimuite_hoi_face

    puts "あっち向いて〜・・・"
    puts "顔の方向  0(上)1(右)2(下)3(左)"
  
      player_direction = gets.to_i
      program_direction = rand(4)
  
      direction = ["上", "右","下","左"]
  
    puts "------------------------------"
    puts "あなたの顔の方向:#{direction[player_direction]}"
    puts "相手の指の方向:#{direction[program_direction]}"
    puts "------------------------------"

    if player_direction == program_direction
      puts "あなたの負けm(_ _)m"
    else
      puts "セーフ！最初はグー、じゃんけん・・・・"  
      return true
    end
end

  
janken_next_game = true

while janken_next_game
  janken_next_game = janken

end


