/* void readJSON()
{
  // Create empty table in which to put data
  dsTable = new Table();
  dsTable.addColumn("name");
  dsTable.addColumn("longitude");
  dsTable.addColumn("latitude");
  dsTable.addColumn("numDocks");
  dsTable.addColumn("numBikes");
  dsTable.addColumn("numSpaces");

  // Load the JSON data which is an array of objects, one for each docking station.
  JSONArray jArray = loadJSONArray("bikeStations.json");

  for (int i=0; i<jArray.size(); i++)
  {
    JSONObject dStation = jArray.getJSONObject(i);

    // Name, latitude and longitude are all key-value pairs in each JSON object
    String fullName = dStation.getString("commonName");
    float latitude  = dStation.getFloat("lat");
    float longitude = dStation.getFloat("lon");

    // Number of docking points, spaces and bikes are stored in an array sub-objects
    JSONArray otherProps = dStation.getJSONArray("additionalProperties");
    int numBikes  = otherProps.getJSONObject(6).getInt("value");
    int numSpaces = otherProps.getJSONObject(7).getInt("value");
    int numDocks  = otherProps.getJSONObject(8).getInt("value");

    // Add a new row containing data to table.
    if (numDocks > 0)
    {
      TableRow row = dsTable.addRow();
      String[] names = split(fullName,",");
      row.setString("name", names[0]);
      row.setFloat("longitude", longitude);
      row.setFloat("latitude", latitude);
      row.setInt("numDocks", numDocks);
      row.setInt("numBikes", numBikes);
      row.setInt("numSpaces", numSpaces);
    }
  }
}

*/