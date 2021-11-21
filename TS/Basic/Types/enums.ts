enum CompassDirections {
  cdNorth, cdEast, cdSouth, cdWest
}

// all enum members must be same type
enum Colors {
  Red = "FF0000", /*Green = (1, "00FF00"),*/Blue = "0000FF"
}

enum OtherColors {
  Red = 0xFF0000, Orange = 0xFFA500, Yellow = 0xFFFF00
}

enum Signals {
  sigQuit = 3, sigAbort = 6, sigKill = 9
}
// no pure enums
console.log(OtherColors.Orange);
console.log(Colors.Red);
console.log(OtherColors.Red);
console.log(OtherColors.Orange, " ", OtherColors.Orange);
