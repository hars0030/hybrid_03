class Students {
  List<Map<String, dynamic>> people;

  Students(this.people);

  sort(String fieldName) {
    people.sort((a, b) => a[fieldName].compareTo(b[fieldName]));
    output();
  }

  output() {
    for (var person in people) {
      print(person);
    }
  }

  plus(Map<String, dynamic> person) {
    people.add(person);
    output();
  }

  remove(String fieldName) {
    people.forEach((element) {
      if (element.containsKey(fieldName)) {
        element.remove(fieldName);
      }
    });
    output();
  }
}
