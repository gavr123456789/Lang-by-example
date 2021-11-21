import assert from 'assert/strict';

export function setsExample() {
  //Create a Set
  let diceEntries = new Set<number>([1, 2, 3, 4, 5]);
  //Add values
  diceEntries.add(6);
  //Check value is present or not
  assert(diceEntries.has(1));
  assert(!diceEntries.has(10)); //6
  //Size of Set
  console.log("size = ", diceEntries.size);
  //Delete a value from set
  console.log(diceEntries);
  diceEntries.delete(6); // true
  console.log("after delete 6 ", diceEntries);
  //Clear whole Set
  diceEntries.clear();
  console.log("after clear ", diceEntries);
}
