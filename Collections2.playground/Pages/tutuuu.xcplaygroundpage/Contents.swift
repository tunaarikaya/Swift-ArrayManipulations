import UIKit

var meyveler = Set<String>()

meyveler.insert("Elma")
meyveler.insert("portakal")
meyveler.insert("mango")
print(meyveler)

meyveler.insert("kiraz")

print(meyveler)

for meyve in meyveler{
    print("Sonuç : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("indeks: \(indeks) - > meyve : \(meyve)")
    
}
print("boyut : \(meyveler.count)")
print("Boş mu ?  : \(meyveler.isEmpty)")

meyveler.remove("kiraz")
print(meyveler)

meyveler.removeAll()
print(meyveler)

//Dict - HashMap - Map

var iller = [Int:String]()

iller[06] = "Ankara"
iller[34] = "İstanbul"
iller[32] = "isparta"
print(iller)

print(iller[32]!)


for (key,value) in iller {
    print("key : \(key) - value : \(value)")
    
    iller.removeValue(forKey: 16)
    print(iller)
    
}
