// Reads the GDP data from a text file.
/* void readData()
{
  String[] textLines = loadStrings("gdp.tsv");

  // Count the number of data rows in the file.
  int numRows = 0;
  for (String textLine : textLines)
  {
    if (!textLine.startsWith("#"))
    {
      numRows++;
    }
  }
  years = new float[numRows];
  gdps  = new float[numRows];

  // Read the data into the arrays.
  int dataRow = 0;
  for (String textLine : textLines)
  {
    if (!textLine.startsWith("#"))
    {
      String[] tokens = split(textLine, TAB);

      // Read the year data from the first 4 characters in the first column
      float date = float(tokens[0].substring(0, 4));

      // Read quarter figure from end of the first column and add it to year.
      date = date + float(tokens[0].substring(6))/4 - 0.25;

      // Store date in the array.
      years[dataRow] = date;

      // Read the inflation-adjusted GDP per person value from the 6th column.
      String gdpText = tokens[5].replace(",", "");        // Remove the commas.

      if (gdpText.length() == 0)                  // Replace blank cells with 0s.
      {
        gdpText = "0";
      }
      gdps[dataRow] = float(gdpText);      // Convert text to a number and store.

      // Update the current data row.
      dataRow++;
    }
  }
}

*/