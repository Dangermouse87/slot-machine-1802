require_relative "slot_machine"

# slot_machine = SlotMachine.new(%w[🍒 7️⃣ 🛎])
slot_machine = SlotMachine.new( [SYMBOLS.sample, SYMBOLS.sample, SYMBOLS.sample] )
p slot_machine.score