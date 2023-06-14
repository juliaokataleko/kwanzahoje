class CurrencyModel {
  final String name;
  final double kwanza;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel(
    this.name, 
    this.kwanza, 
    this.real, 
    this.dolar, 
    this.euro, 
    this.bitcoin
  );

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel("Kwanza", 1.0, 0.0072, 0.0015, 0.0014, 0.00),
      CurrencyModel("Real", 140.00, 1.0, 0.21, 0.19, 0.0000079),
      CurrencyModel("US Dólar", 676.50, 4.86, 1.0, 0.93, 0.000038),
      CurrencyModel("Euro", 731.17, 5.26, 1.08, 1.0, 0.000042),
      CurrencyModel("Bitcoin", 17572087.50, 126157.98, 25975.00, 24016.09, 1.0)
    ];
  }
}
