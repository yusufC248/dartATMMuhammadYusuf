import 'constant.dart';
import 'factorial.dart';
import 'loop_app.dart';
import 'mahasiswa.dart';
import 'tugas_atm.dart';
import 'dart:io';

void main() {
  Main start = new Main();
  start.menu();
}

class Main {
  AplikasiATM atm = new AplikasiATM();
  LoopApp loop = new LoopApp();
  Mahasiswa mhs = new Mahasiswa();
  FactorialApp fctr = new FactorialApp();

  void menu() {
    print("Re-Task Tugas 1 Dart");
    print("\nPilih Menu Aplikasi : ");
    print("1. Aplikasi ATM");
    print("2. Aplikasi Faktorial");
    print("3. Aplikasi Perulangan");
    print("4. Aplikasi Data Mahasiswa");
    print("ketik 0 untuk selesai");

    stdout.write("\nMasukan Pilihan (1-4) : ");
    var select = stdin.readLineSync();

    switch (select) {
      case '1':
        atm.run();
        break;
      case '2':
        fctr.run();
        break;
      case '3':
        loop.run();
        break;
      case '4':
        mhs.run();
        break;
      default:
        break;
    }
  }
}
