import 'dart:io';

List<String> pinAtm = ['000000', '222222'];
List<double> JmlSaldo = [500000, 600000];

String akun = "";
double Saldo = 0;

class AplikasiATM {
  void run() {
    print("ATM Jaya Jaya Jaya");
    login();
  }

  void login() {
    stdout.write('Masukan pin : ');
    String pin = stdin.readLineSync()!.trim();
    for (int i = 0; i < pinAtm.length; i++) {
      if ((pin == pinAtm[0]) || (pin == pinAtm[1])) {
        akun = pin;
        print("berhasil");
        menu();
        break;
      } else {
        print("Gagal");
        login();
        break;
      }
    }
  }

  void menu() {
    print("Pilih Menu Transaksi : ");
    print("1. Cek Saldo");
    print("2. Transfer");
    print("3. Tarik Tunai");
    print("4. Setor  Tunai");
    print("5. Ganti Akun");
    print("ketik 0 untuk selesai");

    stdout.write("\nMasukan Pilihan (1-5) : ");
    var select = stdin.readLineSync();
    switch (select) {
      case '1':
        cekSaldo(akun);
        break;
      case '2':
        transfer(akun);
        break;
      case '3':
        tarikSaldo(akun);
        break;
      case '4':
        tambahSaldo(akun);
        break;
      case '5':
        print("Terima Kasih\n\n");
        login();
        break;
      default:
        break;
    }
  }

  void cekSaldo(String akun) {
    if (akun == pinAtm[0]) {
      Saldo = JmlSaldo[0];
      print("Saldo Anda : Rp." + JmlSaldo[0].toString() + "\n");
      menu();
    } else {
      Saldo = JmlSaldo[1];
      print("Saldo Anda : Rp." + JmlSaldo[1].toString() + "\n");
      menu();
    }
  }

  void tarikSaldo(String akun) {
    stdout.write("Masukan Jumlah Penarikan : Rp.");
    double tarik = double.parse(stdin.readLineSync()!);
    if (akun == pinAtm[0]) {
      if (tarik <= JmlSaldo[0]) {
        Saldo = JmlSaldo[0];
        JmlSaldo[0] = JmlSaldo[0] - tarik;
        print(
            "\n\nTunggu Sampai Uang Keluar, Jangan Lupa Mengambil Kartu ATM Anda Kembali!");
        print("Sisa Saldo Anda : Rp." + JmlSaldo[0].toString());
        menu();
      } else {
        print("Saldo Anda tidak cukup, sisa saldo Anda Rp." +
            JmlSaldo[0].toString() +
            " Ulangi! \n");
        menu();
      }
    } else {
      if (tarik <= JmlSaldo[1]) {
        Saldo = JmlSaldo[1];
        JmlSaldo[1] = JmlSaldo[1] - tarik;
        print(
            "\n\nTunggu Sampai Uang Keluar, Jangan Lupa Mengambil Kartu ATM Anda Kembali!");
        print("Sisa Saldo Anda : Rp." + JmlSaldo[1].toString() + "\n");
        menu();
      } else {
        print("Saldo Anda tidak cukup, sisa saldo Anda Rp." +
            JmlSaldo[1].toString() +
            " Ulangi! \n");
        menu();
      }
    }
  }

  void tambahSaldo(String akun) {
    stdout.write("Masukan Nominal Setor Tunai : Rp.");
    double setor = double.parse(stdin.readLineSync()!);
    if (akun == pinAtm[0]) {
      Saldo = JmlSaldo[0];
      JmlSaldo[0] = JmlSaldo[0] + setor;
      print("\n\nHarap Masukan Uang Anda ke Mesin AtM!");
      print("Sisa Saldo Anda : Rp." + JmlSaldo[0].toString() + " \n");
      menu();
    } else {
      Saldo = JmlSaldo[1];
      JmlSaldo[1] = JmlSaldo[1] + setor;
      print("\n\nHarap Masukan Uang Anda ke Mesin AtM!");
      print("Sisa Saldo Anda : Rp." + JmlSaldo[1].toString() + " \n");
      menu();
    }
  }

  void transfer(String akun) {
    if (akun == pinAtm[0]) {
      print("Anda hanya bisa transfer ke Akun : " + pinAtm[1]);
      stdout.write("Masukan Jumlah Nominal Transfer : Rp.");
      double jmlTransfer = double.parse(stdin.readLineSync()!);
      JmlSaldo[0] = JmlSaldo[0] - jmlTransfer;
      print("\nTransfer Berhasil, Ambil Struk\n");
      print("Sisa Saldo Anda : Rp." + JmlSaldo[0].toString() + "\n");
      JmlSaldo[1] = JmlSaldo[1] + jmlTransfer;
      menu();
    } else {
      print("Anda hanya bisa transfer ke Akun : " + pinAtm[0]);
      stdout.write("Masukan Jumlah Nominal Transfer : Rp.");
      double jmlTransfer = double.parse(stdin.readLineSync()!);
      JmlSaldo[1] = JmlSaldo[1] - jmlTransfer;
      print("\nTransfer Berhasil, Ambil Struk\n");
      print("Sisa Saldo Anda : Rp." + JmlSaldo[1].toString() + "\n");
      JmlSaldo[0] = JmlSaldo[0] + jmlTransfer;
      menu();
    }
  }
}
