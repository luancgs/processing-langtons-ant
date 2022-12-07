/* Display class
 
 universe: the universe instance to display
 cellSize: the size of each cell to be displayed
 whiteColor: color of white cells
 blackColor: color of black cells
 antColor: color of the ant
 
 drawUniverse(): draws the current state of the universe on the screen
 
 **/

class Display {
  Universe universe;
  int cellSize;
  color whiteColor = color(255, 255, 255);
  color blackColor = color(0, 0, 0);
  color antColor = color(255, 0, 0);

  Display(Universe uni) {
    universe = uni;
    cellSize = height/universe.lines;
  }

  void drawUniverse() {
    for (Cell[] line : universe.cells) {
      for (Cell cell : line) {
        if (cell == universe.ant.cell) {
          fill(antColor);
        } else {
          if (cell.state == true) {
            fill(whiteColor);
          } else {
            fill(blackColor);
          }
        }
        square(cell.column*cellSize, cell.line*cellSize, cellSize);
      }
    }

    for (int i = 0; i < universe.lines; i++) {
      line(0, i*cellSize, width, i*cellSize);
    }

    for (int i = 0; i < universe.columns; i++) {
      line(i*cellSize, 0, i*cellSize, height);
    }
  }
}
