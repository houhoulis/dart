class PascalsTriangle {
  List<List<num>> rows(int rows) {
    if(rows <= 0) {
      return [];
    }
    else {
      List<List<num>> triangle = new List<List<num>>();

      for (int x = 1; x <= rows; x++) {
        List<num> nextRow = new List<num>(x)
          ..[0] = 1
          ..[x - 1] = 1;
        if (triangle.length > 1) {
          List<num> previousRow = triangle.elementAt(triangle.length - 1);
          for(int i = 1; i < previousRow.length; i++) {
            nextRow[i] = previousRow[i-1] + previousRow[i];
          }
        }
        triangle.add(nextRow);
      }

      return triangle;
    }
  }
}
