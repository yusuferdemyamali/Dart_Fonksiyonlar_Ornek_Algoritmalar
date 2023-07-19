void main(List<String> args) {
  
//Geri dönüş tipi int olan bir fonksiyon yazın
//Girdiğimiz sayıların toplamını geri döndürsün
//Örnek = 5 girersek (5+4+3+2+1=15) şeklinde

print(OrnekBir(3));

//Geri dönüş değeri int tipinde bir fonksiyon yazınız
//Fonksiyonumuz int tipinde bir sayı alsın
//Aldığı sayıya kadar olan çift sayıların toplamını geriye döndürsün

print(Ornek_iki(6));

//Girilen sayının faktoriyelini hesaplayan bir fonksiyon yazınız

print(Ornek_uc(5));

//Dikdörtgen alanı hesaplayan bir fonksiyon yazın.
//Kullanıcı değer girmezse (opsiyonel) kısa kenar varsayılan olarak 5 olsun.

print(Ornek_dort(6,kisaKenar: 4));

//Üçgenin ikizkenar mı, eşkenar mı, çeşitkenar mı olduğunu söyleyen bir fonksiyon yazın.
//Verilecek olan parametreler isimlendirilmiş olsun. Varsayılan 1 değerinde olsun.
//Geri dönüş tipi olmasın

Ornek_bes(aKenar: 3, bKenar: 4, cKenar: 5);

////////////////////////////////////////////////////////////////////////////////////////

}

int OrnekBir(girilenSayi) {
  int Toplam = 0;
  for (var i = 0; i <= girilenSayi; i++) {
    Toplam = Toplam + i;
  }
  return Toplam;

}

int Ornek_iki(girilenSayi) {
  int toplam = 0;

  for (int i = 0; i <= girilenSayi; i++) {
    if(i % 2 == 0){
      toplam = toplam + i;
    }
  }
  return toplam;
}

int Ornek_uc(girilenSayi) {
  int toplam = 1;
  for (var i = 1; i <= girilenSayi; i++) {
    toplam = toplam * i;
  }
  return toplam;
}

int Ornek_dort(uzunKenar,{kisaKenar = 5}) {

  int dikdortgenAlani = uzunKenar * kisaKenar;
  return dikdortgenAlani;
}

void Ornek_bes({int aKenar = 1, int bKenar = 1, int cKenar = 1}){
    if (aKenar == bKenar && aKenar == cKenar) {
    print("Üçgen eşkenar");
  } else if (aKenar == bKenar || aKenar == cKenar || bKenar == cKenar) {
    print("Üçgen ikizkenar");
  } else {
    print("Üçgen çeşitkenar");
  }
}