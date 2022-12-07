Universe universe;
Display display;

int count = 0;
boolean end = false;

void setup() {
  size(1000, 1000);
  universe = new Universe(200, 200);
  display = new Display(universe);
}

void draw() {
  if (!end) {
    background(220);
    display.drawUniverse();
    universe.update();
    println("Step: ", count++);

    if (universe.ant.cell.line == 0 || universe.ant.cell.line == universe.lines - 1 || universe.ant.cell.column == 0 || universe.ant.cell.column == universe.columns - 1) {
      end = true;
      println(" ====== END ====== ");
    }
  }
}
