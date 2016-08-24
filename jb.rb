require "./lib/jungle_beat"
require "pry"

jb = JungleBeat.new

puts "Let's listen to some music."
puts "Well. Let's make some music."
puts "Enter the sounds you want me to sing."
sounds = gets.chomp

jb.append("#{sounds}")

puts "Great. Let's listen with the default settings."
puts "Type 1 to play or 2 to play, but less decisively."
selection = gets.chomp.to_i
if selection == 1
  jb.play
else
  jb.play
end

puts "Man. That was pretty fast."
puts "Maybe you want to try something else. A different voice, maybe?"
puts "To skip this, enter 'skip'"
if gets.chomp != "skip"
voice = gets.chomp.to_s
jb.voice = voice
end

puts "How about a different speed? I suggest 50."
puts "To skip this, enter 'skip.'"
if gets.chomp != "skip"
speed = gets.chomp.to_i
jb.rate = speed
end
puts "Okay. Let's listen again."
puts "Type 1 to play or 2 to play the original."
selection = gets.chomp.to_i
if selection == 1
  jb.play
else
  jb.reset_rate
  jb.reset_voice
  jb.play
end

puts "Wow. That was great. I see a record deal in your future."
puts ".........."
puts "................."
puts "Just kidding."
puts "Anyway. Do you want to save your masterpiece?"
puts "Type 1 to save and 2 to hide your shame, er, exit."
selection = gets.chomp.to_i
if selection == 1
  jb.save_raw_song_data
else
  puts "I'm sure it wasn't that bad. Feel free to try again."
end
