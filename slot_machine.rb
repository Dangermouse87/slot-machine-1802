# Let's implement a SlotMachine class with 3 reels. Each reel has 3 different items.

# SlotMachine.new(%w[🍒 7️⃣ 🛎]) => already played slot machine
# SlotMachine.new             => ready to play slot machine

# The class has one public instance method, score, following these rules:

# Item	      Three of the same	  Two of the same + Joker
# Joker   🤩	50	                25 (2 jokers + anything)
# Star    ⭐️	40	                20
# Bell    🛎	30	                15
# Seven   7️⃣	20	                10
# Cherry  🍒	10	                5

SYMBOLS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]
          #   0   1  2  3  4 (index)
          #   1   2  3  4  5 * 10 (if 3 of a kind (😍😍😍))
          #  10  20 30 40 50
          #   5  10 15 20 25 * 5  (if 2 of a kind + 1 ⭐⭐😍) 
# 3 of a kind
# 2 of a kind + joker
# Anything else will score 0

#1 Initialize
#2 Create methods

class SlotMachine
  attr_reader :reels

  def initialize(reels = [])
    # this defines the instance variable.
    @reels = reels
  end

  # define our score method
  def score
    # conditional based on the outcome
      # 3 of a kind
      # 2 of a kind + 😍
      # 0
    puts @reels.join(" ")
    if @reels[0] == @reels[1] && @reels[0] == @reels[2]
      (SYMBOLS.index(@reels[0]) + 1) * 10
    elsif @reels.count(SYMBOLS[4]) == 2
      25
    elsif @reels.count(SYMBOLS[4]) == 1
      @reels.delete(SYMBOLS[4])
      if @reels[0] == @reels[1]
        (SYMBOLS.index(@reels[0]) + 1) * 5
      else 
        0
      end
    else
      0
    end
  end
end