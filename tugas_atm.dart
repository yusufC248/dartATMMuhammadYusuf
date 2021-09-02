import 'dart:io';

List<String> pinAtm = ['000000', '222222'];
double saldo = 500000;
void main() {
  print("ATM Jaya Jaya Jaya");
  login();
  menu();
}

void login() {
  stdout.write('Masukan pin : ');
  String pin = stdin.readLineSync()!.trim();
  if (pin == pinAtm[0]) {
    print("berhasil");
  } else if (pin == pinAtm[1]) {
    print("berhasil");
  } else {
    print("[[Pin Salah, Ulangi!]]");
    login();
  }
}

void menu() {
  print("Pilih Menu Transaksi : ");
  print("1. Cek Saldo");
  print("2. Transfer");
  print("3. Tarik Tunai");
  print("4. Setor  Tunai");
  print("5. Exit");

  stdout.write("\nMasukan Pilihan (1-5) : ");
  var select = stdin.readLineSync();
  switch (select) {
    case '1':
      print("Jumlah Saldo Anda : $saldo");
      break;
    case '2':
      transfer();
      break;
    case '3':
      tarikSaldo();
      break;
    case '4':
      tambahSaldo();
      break;
    case '5':
      print("Terima Kasih");
      break;
    default:
      print("[[pilihan error, ulangi]]");
      menu();
  }
}

void tarikSaldo() {
  stdout.write("Masukan Jumlah Penarikan : Rp.");
  double tarik = double.parse(stdin.readLineSync()!);

  if (tarik <= saldo) {
    saldo = saldo - tarik;
    print(
        "\n\nTunggu Sampai Uang Keluar, Jangan Lupa Mengambil Kartu ATM Anda Kembali!");
    print("Sisa Saldo Anda : Rp.$saldo \n");
    menu();
  } else {
    print("Saldo Anda tidak cukup, sisa saldo Anda Rp.$saldo. Ulangi! \n");
    menu();
  }
}

void tambahSaldo() {
  stdout.write("Masukan Nominal Setor Tunai : Rp.");
  double setor = double.parse(stdin.readLineSync()!);
  saldo = saldo + setor;
  print("\n\nHarap Masukan Uang Anda ke Mesin AtM!");
  print("Sisa Saldo Anda : Rp.$saldo \n");
  menu();
}

void transfer() {
  stdout.write("Masukan Nomor Rekening Tujuan : ");
  var noRek = stdin.readLineSync();
  print("$noRek a/n Muhammad Yusuf, Bank BRI\n");
  stdout.write("Masukan Jumlah Nominal Transfer : Rp.");
  double jmlTransfer = double.parse(stdin.readLineSync()!);

  saldo = saldo - jmlTransfer;
  print("\nTransfer Berhasil, Ambil Struk\n");
  print("Sisa Saldo Anda : Rp.$saldo \n");
  menu();
}
