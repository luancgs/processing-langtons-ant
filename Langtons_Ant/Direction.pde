/* Direction enum
 
 Gathers the four possible directions the Ant can be facing
 North, South, East, West;
 
 getLeft(dir): returns the direction immediately to the left;
 getRight(dir): returns the direction immediately to the right;
 
 **/

enum Direction {
  North, 
    South, 
    East, 
    West;

  static Direction getLeft(Direction dir) {
    if (dir == Direction.North) {
      return Direction.West;
    } else if (dir == Direction.East) {
      return Direction.North;
    } else if (dir == Direction.South) {
      return Direction.East;
    } else {
      return Direction.South;
    }
  }

  static Direction getRight(Direction dir) {
    if (dir == Direction.North) {
      return Direction.East;
    } else if (dir == Direction.East) {
      return Direction.South;
    } else if (dir == Direction.South) {
      return Direction.West;
    } else {
      return Direction.North;
    }
  }
}
