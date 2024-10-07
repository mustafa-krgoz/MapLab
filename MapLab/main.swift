//
//  main.swift
//  MapLab
//
//  Created by Mustafa Karagöz on 7.10.2024.
//

import Foundation

// Elimizde öğrencilerin notları bulunmaktadır. Bu listeye göre öğrencilerin not ortalamasının alınıp geçme ve kalma durumlarının kontrol edilmesi ve ekrana yazdırılması

var notlar = [[Float]]()
var ortalamalar = [Float]()
var durumlar = [String]()

notlar.append([90, 80, 70, 60, 50])
notlar.append([30, 70, 50, 20, 40])


for i in 0..<notlar.count {
    let ortalama = notlar[i].reduce(0){$0 + $1} / Float(notlar[i].count) //Aktif olan değer ile bir sonraki değeri toplar notlar sayısını böler.
    ortalamalar.append(ortalama)
}

durumlar = ortalamalar.map({
    if $0 < 50 {
        return "Kaldınız"
    }
    else {
        return "Geçtiniz"
    }
})
print("Ortalamalar: \(ortalamalar)")
print("Durumlar: \(durumlar)")



