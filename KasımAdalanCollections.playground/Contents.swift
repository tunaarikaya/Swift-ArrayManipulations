//: [Previous](@previous)

import Foundation
import UIKit

var numaralar = [10,20,30]
var meyveler = [String]()

meyveler.append("elma")
meyveler.append("kiraz")
meyveler.append("mango")
print(meyveler)

meyveler[0] = "yeni elma"
print(meyveler)

meyveler.insert("Portakal",at:1)
print(meyveler)
//insertle yaparsan index değiştirir

print(meyveler[2])

let m = meyveler[0]
print(m)

print("Boyut :\(meyveler.count) ")
print("Boş kontrol : \(meyveler.isEmpty)")

for meyve in meyveler{
    print("sonuç 1 : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated(){
    print("\(indeks). -> \(meyve)")
    
}
meyveler.remove(at : 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

class Ogrenciler{
    var no:Int?
    var ad:String?
    var sinif:String?
    
    init(no:Int,ad:String,sinif:String){
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad: "Tuna", sinif: "12A")
var o2 = Ogrenciler(no: 300, ad: "Sude", sinif: "12B")
var o3 = Ogrenciler(no: 500, ad: "Arda", sinif: "9C")

var ogrencilerListesi = [Ogrenciler]()

ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi{
    print("No : \(o.no!) - Ad : \(o.ad!) - Sinif : \(o.sinif!)")
    
}
//Filtreleme işlemleri !! *****

var f1 = ogrencilerListesi.filter({ $0.no! > 100 && $0.no! < 250})
print("Filtreleme 1")

var f2 = ogrencilerListesi.filter({$0.ad!.contains("T") })
print("Filtreleme 2")

var s1 = ogrencilerListesi.sorted(by:{ $0.no! > $1.no! })
print("Sayisal büyükten kucuge")

for o in s1{
    print("No :  \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}

var s2 = ogrencilerListesi.sorted(by: {$0.no! < $1.no!})
print("Sayisal kucukten büyüğe")

for o in s2{
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!)")
    
}

var s3 = ogrencilerListesi.sorted(by:{$0.ad! < $1.ad!})
print("Metinsel kontrol kucukten büyüğe")
for o in s3{
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!)")
}

var s4 = ogrencilerListesi.sorted(by:{$0.ad! > $1.ad!})
print("metinsel kontrol büyükten kucuge :")

for o in s4 {
    print("No : \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}
