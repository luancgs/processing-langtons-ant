/* Cell class
 
 line: the line of this cell in the universe matrix
 column: the column of this cell in the universe matrix
 state: if the cell is black or white
 
 **/

class Cell {
  int line;
  int column;
  boolean state;

  Cell(int l, int c, boolean s) {
    line = l;
    column = c;
    state = s;
  }
}
