import UIkit

func kisiTanima1(ad:String){
    if ad == "ahmett"{
        print("selam aahmet")
    }
    else{
        print("tanınmayan kişid")
    }
}

kisiTanima1(ad: "ahmet")

func kisiTanima2(ad:String){
    guard ad == "Ahmet" else{
        print("tanınmayan kişi")
    }
}
kisiTanima2(ad: "Tuna")

//hata ayıklama 1. compile error derleyici hatasi

//2. runtimeerror calisma sirasidna olıur

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}

func bolme(sayi1:Int,sayi2:Int)throws -> Int{
    if sayi2==0{
        throw sifiraBolunmeHatasi
    }else{
        return sayi1/sayi2
    }
}

do{
    let sonuc = try bolme(sayi1:10,sayi2:5)
}catch{
    print("sayi sıfıra bölünmez")
}

if let temp = sonuc1{
    print(temp)
}else{
    print("sayi sifira bölünemez")
}
