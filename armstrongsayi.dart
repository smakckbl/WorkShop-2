import 'dart:math';

void main() {
  bool ArmstrongNumber(int sayi) {
    int ilksayi = sayi;
    int basamaksayisi = sayi.toString().length;
    int toplam = 0;

    for (int i = 0; i < basamaksayisi; i++) {
      int basamak = (sayi % 10);
      toplam += pow(basamak, basamaksayisi).toInt();
      sayi = sayi ~/ 10;
    }
    return ilksayi == toplam;
  }

  print("Lütfen kontrol için bir sayi giriniz");
  int sayi1 = (370);

  if (ArmstrongNumber(sayi1)) {
    print("sayi bir ArmStrong Sayidir.");
  } else {
    print("Sayi bir ArmStrong Sayi değildir");
  }
  int sayi2 = (100);

  if (ArmstrongNumber(sayi2)) {
    print("sayi bir ArmStrong Sayidir.");
  } else {
    print("Sayi bir ArmStrong Sayi değildir");
  }
}
