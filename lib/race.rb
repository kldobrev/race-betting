module RaceBet
  class Race

    class << self
      def score(guesses, winners)
        points = 0
        score_rules = [15, 10, 5, 3, 1]
        guesses.each_with_index do |guess, ind|
          if guess == winners[ind] 
            points += score_rules[ind]
          elsif winners.include? guess
            points += 1
          end
        end
        return points
      end
    end

  end
end
