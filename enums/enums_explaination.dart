enum Country {
  INDIA('India'),
  CANADA('Canada'),
  IRELAND('Ireland'),
  CHINA('China');

  const Country(this.countryName);

  final String countryName;
}

void main() {
  print('Country : ${Country.INDIA.countryName}');
}
