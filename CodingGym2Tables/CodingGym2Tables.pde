  Table cohorts;

void setup() {
  cohorts = loadTable("cohorts.csv","header");
  
  int numRows = cohorts.getRowCount();
  int numCols = cohorts.getColumnCount();
  println(numRows,numCols);
  println(cohorts.getInt(0,"NumStudents"));
  println(cohorts.getString(1,"Room"));
  
  for (int row = 0; row<cohorts.getRowCount(); row++)
  {
    println(cohorts.getString(row,"Course"));
  }
  
  float maxStudents = MIN_FLOAT;
  for (int row = 0; row<cohorts.getRowCount(); row++)
  {
    maxStudents = max(maxStudents,cohorts.getFloat(row,"NumStudents"));
  }
  println(maxStudents);
  
  float minStudents = MAX_FLOAT;
  for (int row = 0; row<cohorts.getRowCount(); row++)
  {
    minStudents = min(minStudents,cohorts.getFloat(row,"NumStudents"));
  }
  println(minStudents);
  
 // TableRow tRow = cohorts.findRow("UG Business Computing Systems","Course");
 // println(tRow.getString("Room"));
  
  TableRow tRow = cohorts.findRow("PG Information Science","Course");
  println(tRow.getInt("NumStudents"));
}

void draw () {

  
}