void main() {
  var unsortedNumbers = [2, 5, 3, 4, 1];
  print(unsortedNumbers);

  var sortedNumbers = unsortedNumbers.sortAsc();

  print(sortedNumbers);
}

extension Sorting on List<int> {
  List<int> sortAsc() {
    var list = this;
    var length = this.length;

    for (int i = 0; i < length - 1; i++) {
      int min = i;
      for (var j = i + 1; j < length; j++) {
        if (list[j] < min) {
          min = j;
        }
      }

      var temp = list[i];
      list[i] = list[i];
      list[i] = temp;
    }
    return list;
  }
}
