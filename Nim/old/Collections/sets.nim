import std/sets


# Create a Set
var diceEntries = toHashSet([1, 2, 3, 4, 5])
# Add values
diceEntries.incl 6
# Check value is present or not
assert diceEntries.contains 5
assert not diceEntries.contains 10
# Size of Set
echo "size = ", diceEntries.len
# Delete a value from set
echo diceEntries
diceEntries.excl 6
echo "after delete 6 ", diceEntries
# Clear whole Set
diceEntries.clear()
echo "after clear ", diceEntries