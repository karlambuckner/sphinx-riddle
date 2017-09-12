class Game
  attr_reader :question, :riddles
  def initialize ()
    @riddles = {
       "The more you take, the more you leave behind. What am I?" => ["footsteps", "steps"],
      "What comes once in a minute, twice in a moment, but never in a thousand years?" => ["m", "the letter m"],
      "What has a head, a tail, is brown, and has no legs?" => ["a penny", "penny", "pennies"]
    }
  end



  # success_arr = ['You gain eternal life!', 'Your access to the city is granted', 'The treasure of kablah is yours!']

  def retrieve_riddle()
    @question = @riddles.keys.sample(1).join(' ')
  end

  def test_riddle(answer)
    @riddles.fetch(@question).include? answer  
  end

end




# keys_to_extract = [:id, :name]
#
# choices = params.select { |key, value| key.to_s.match(/^choice\d+/) }
# params.keys.select { |key| key.to_s.match(/^choice\d+/) }
#
# h.each_key Call block once for each key in hash h, passing the key as a parameter
#
# h[key]Element Reference - retrieve the value object corresponding to the key object of hash h
#
# h.fetch(key) Return a value from hash h for key. Raise exception if key not found
#
# h.key(value) Return the key of an occurrence of a given value in hash h
#
# hash.index( country_id.to_i )
#
# country_name = hash.key( country_id.to_i )
