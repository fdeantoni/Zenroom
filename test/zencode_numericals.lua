print "ZENCODE GENERIC NUMERICAL TESTS"

assert(BIG.new(O.from_hex('0a')):int() == 10, "Octet -> BIG -> integer conversion failed")
assert(BIG.new(O.from_hex('14')):int() == 20, "Octet -> BIG -> integer conversion failed")

ZEN:begin()
ZEN:parse([[
rule check version 1.0.0
Given nothing
When I set 'left' to '10'
and I set 'right' to '20'
and number 'left' is less or equal than 'right'
Then print 'OK'
]])
ZEN:run()


ZEN:begin()
ZEN:parse([[
rule check version 1.0.0
Given nothing
When I set 'left' to '0a' base '16'
and I set 'right' to '14' base '16'
and number 'left' is less or equal than 'right'
Then print 'OK'
]])
ZEN:run()


ZEN:begin()
ZEN:parse([[
rule check version 1.0.0
Given nothing
When I set 'left' to '0a' formatted as 'hex'
and I set 'right' to '14' formatted as 'hex'
and number 'left' is less than 'right'
Then print 'OK'
]])
ZEN:run()
