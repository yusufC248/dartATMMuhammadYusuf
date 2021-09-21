import 'dart:io';

class Mahasiswa {
  var dataMhs = new Map();

  void run() {
    stdout.write("Masukan nama Mahasiswa : ");
    var nama = stdin.readLineSync();
    dataMhs['nama'] = nama;
    stdout.write("Masukan umur Mahasiswa : ");
    var umur = stdin.readLineSync();
    dataMhs['umur'] = umur;
    stdout.write("Masukan jurusan Mahasiswa : ");
    var jurusan = stdin.readLineSync();
    dataMhs['jurusan'] = jurusan;

    print("\n\n");
    print(dataMhs);
  }
}
