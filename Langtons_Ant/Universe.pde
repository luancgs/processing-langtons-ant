/* Universe class
 
 lines: the number of lines of the cells matrix
 columns: the number of columns of the cells matrix
 cells: cells matrix
 ant: the ant instance
 
 generateCells(): populates the universe with all white cells
 generateRandomCells(): populates the universe with random cells
 update(): updates the cells states and moves the ant
 
 **/

class Universe {
  int lines;
  int columns;
  Cell[][] cells;
  Ant ant;

  Universe(int l, int c) {
    lines = l;
    columns = c;
    cells = new Cell[lines][columns];

    generateCells();

    Direction[] possibleDirections = Direction.values();
    ant = new Ant(cells[lines/2][columns/2], possibleDirections[int(random(possibleDirections.length))], this);
  }

  void generateCells() {
    for (int i = 0; i < lines; i++) {
      for (int j = 0; j < columns; j++) {
        cells[i][j] = new Cell(i, j, true);
      }
    }
  }

  void generateRandomCells() {
    for (int i = 0; i < lines; i++) {
      for (int j = 0; j < columns; j++) {
        boolean cellState = random(1) < 0.5 ? true : false;
        cells[i][j] = new Cell(i, j, cellState);
      }
    }
  }

  void update() {
    ant.move();
  }
}
