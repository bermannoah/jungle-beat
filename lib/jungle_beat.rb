require './lib/linked_list'

class JungleBeat

  attr_reader :list, :data
  attr_accessor :rate, :voice

  def initialize
    @list = LinkedList.new
    @rate = 500
    @voice = "Cellos"
  end

  def append(data)
    data.split.each do |sound|
      list.append(sound)
    end
    data
  end

  def count
    list.count
  end

  def play
    puts "Listen to this..."
    `say -r #{rate} -v #{voice} #{list.to_string}`
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Cellos"
  end

  def save_raw_song_data
    puts "Okay, now you can hang onto this."
    output = File.write('./Musical Genius.txt', "#{list.to_string}")
    puts "Bye now!"
  end
end
