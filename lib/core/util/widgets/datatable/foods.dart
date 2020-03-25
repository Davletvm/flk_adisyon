class Foods {
  Foods(this.name, this.calories, this.fat, this.carbs, this.protein, this.sodium, this.calcium, this.iron);

  final String name;
  final int calories;
  final double fat;
  final int carbs;
  final double protein;
  final int sodium;
  final int calcium;
  final int iron;
}

final List<Foods> kDesserts = <Foods>[
  Foods('Frozen yogurt',                        159,  6.0,  24,  4.0,  87, 14,  1),
  Foods('Ice cream sandwich',                   237,  9.0,  37,  4.3, 129,  8,  1),
  Foods('Eclair',                               262, 16.0,  24,  6.0, 337,  6,  7),
  Foods('Cupcake',                              305,  3.7,  67,  4.3, 413,  3,  8),
  Foods('Gingerbread',                          356, 16.0,  49,  3.9, 327,  7, 16),
  Foods('Jelly bean',                           375,  0.0,  94,  0.0,  50,  0,  0),
  Foods('Lollipop',                             392,  0.2,  98,  0.0,  38,  0,  2),
  Foods('Honeycomb',                            408,  3.2,  87,  6.5, 562,  0, 45),
  Foods('Donut',                                452, 25.0,  51,  4.9, 326,  2, 22),
  Foods('KitKat',                               518, 26.0,  65,  7.0,  54, 12,  6),
];