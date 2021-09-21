class LoopApp {
  List<String> months = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  void run() {
    normalLoop();
    doWhileLoop();
    whileLoop();
  }

  void normalLoop() {
    print("Perulangan menggunakan for\n");
    for (int i = 0; i < months.length; i++) {
      print(months[i]);
    }
    print("\n");
  }

  void doWhileLoop() {
    print("Perulangan menggunakan do while\n");
    int i = 0;

    do {
      print(months[i]);
      i++;
    } while (i < months.length);
    print("\n");
  }

  void whileLoop() {
    print("Perulangan Menggunakan while\n");
    int i = 0;
    while (i < months.length) {
      print(months[i]);
      i++;
    }
  }
}
