class Country {
  int id;
  String name;
  String code;
 
  Country(this.id, this.name,this.code);
 
  static List<Country> getCountries() {
    return <Country>[
      Country(1, 'Algeria','dz'),
      Country(2, 'USA','us'),
      Country(3, 'Tunis','tn'),
      Country(4, 'Marroc','ma'),
      Country(5, 'Lybia','ly'),
    ];
  }
}