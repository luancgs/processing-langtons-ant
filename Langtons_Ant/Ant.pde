/* Ant class
 
 cell: the cell the ant is currently on
 direction: which direction the ant is facing
 universe: instance of universe this ant belongs to
 
 turnLeft(): turns the direction of the ant to the left
 turnRight(): turns the direction of the ant to the right
 moveFoward(): moves ant to the cell in the same direction
 move(): changes the state of current cell and goes to the next
 
 **/

class Ant {
  Cell cell;
  Direction direction;
  Universe universe;

  Ant(Cell c, Direction dir, Universe uni) {
    cell = c;
    direction = dir;
    universe = uni;
  }

  void turnLeft() {
    direction = Direction.getLeft(direction);
  }

  void turnRight() {
    direction = Direction.getRight(direction);
  }

  void moveFoward() {
    Cell nextCell;

    if (direction == Direction.North) {
      nextCell = universe.cells[cell.line-1][cell.column];
    } else if (direction == Direction.East) {
      nextCell = universe.cells[cell.line][cell.column+1];
    } else if (direction == Direction.South) {
      nextCell = universe.cells[cell.line+1][cell.column];
    } else {
      nextCell = universe.cells[cell.line][cell.column-1];
    }

    cell = nextCell;
  }

  void move() {
    if (cell.state == false) {
      cell.state = true;
      turnLeft();
    } else {
      cell.state = false;
      turnRight();
    }

    moveFoward();
  }
}
