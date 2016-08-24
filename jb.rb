require "./lib/jungle_beat"
require "pry"

jb = JungleBeat.new

puts "Okay, let's make some music."
puts "Enter the sounds you want me to sing > "
  sounds = gets.chomp
  jb.append(sounds)

puts "Great. Enter 'play' to listen or 'exit' to exit."
choice = gets.chomp.to_s

  if choice == "play"
    jb.play
  elsif choice == "exit"
    puts "Goodbye."
    exit
  else
    puts "#{choice} is not an option. Try again."
  end

puts "Beautiful. Would you like to change the voice?"
puts "Enter 'yes' or 'no'."
choice = gets.chomp.to_s

  if choice == "yes"
    puts "Which voice would you like to use?"
    voice = gets.chomp.to_s
    jb.voice = voice
  elsif choice == "no"
    puts "Okay. Next option."
  else
    puts "#{choice} is not an option. Moving on."
  end

puts "How about the speed?"
puts "Enter 'yes' or 'no'."
choice_2 = gets.chomp.to_s
  if choice_2 == "yes"
    puts "Which speed would you like to use?"
    speed = gets.chomp.to_s
    jb.rate = speed
  elsif choice_2 == "no"
    puts "Okay. Moving on."
  else
    puts "#{choice_2} is not an option. Moving on."
  end

puts "Let's listen."
puts "Enter 'play' to listen or 'original' to listen to the original."
choice = gets.chomp.to_s

  if choice == "play"
    jb.play
  elsif choice == "original"
    puts "Playing original now."
    jb.reset_rate
    jb.reset_voice
    jb.play
  else
    puts "#{choice} is not an option. Moving on."
  end

puts "Would you like to save your masterpiece?"
puts "Enter 'sure' to save or 'nope' to exit."
choice = gets.chomp.to_s

  if choice == "sure"
    jb.save_raw_song_data
  elsif choice == "nope"
    puts "See yah later!"
    exit
  else
    puts "#{choice} is not an option. Goodbye."
  end
