//
//  ViewController.swift
//  YoutubeMusic
//
//  Created by Seda Gültekin on 18.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var digerButton2: UIButton!
    @IBOutlet weak var digerButton: UIButton!
    @IBOutlet weak var sarkiDerlemesiCollectionView: UICollectionView!
    @IBOutlet weak var sarkilarCollectionView: UICollectionView!
    @IBOutlet weak var sporButton: UIButton!
    @IBOutlet weak var odaklanmaButton: UIButton!
    @IBOutlet weak var isevButton: UIButton!
    @IBOutlet weak var enerjiButton: UIButton!
    @IBOutlet weak var rahatlamaButton: UIButton!
    @IBOutlet var backGroundView: UIView!
    var sarkilar = [SarkiModel]()
    var sarkilar2 = [SarkiModel2]()
    override func viewDidLoad() {
        super.viewDidLoad()
        sarkilarlist()
        sarkilarlist3()
        
        backGround()
        buttonStyle(button: sporButton)
        buttonStyle(button: odaklanmaButton)
        buttonStyle(button: isevButton)
        buttonStyle(button: rahatlamaButton)
        buttonStyle(button: enerjiButton)
        buttonStyle(button: sporButton)
        
        sarkilarCollectionView.backgroundColor = UIColor.clear
        sarkilarCollectionView.delegate = self
        sarkilarCollectionView.dataSource = self
        collectionViewTasarim()
        
        sarkiDerlemesiCollectionView.backgroundColor = UIColor.clear
        sarkiDerlemesiCollectionView.delegate = self
        sarkiDerlemesiCollectionView.dataSource = self
        collectionViewTasarim2()
        
        digerButton.layer.backgroundColor = UIColor.clear.cgColor
        digerButton.layer.cornerRadius = 15
        digerButton.layer.borderWidth = 0.4
        digerButton.layer.borderColor = UIColor.darkGray.cgColor
        digerButton2.layer.backgroundColor = UIColor.clear.cgColor
        digerButton2.layer.cornerRadius = 15
        digerButton2.layer.borderWidth = 0.4
        digerButton2.layer.borderColor = UIColor.darkGray.cgColor
        
    }

    func backGround() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [ #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1).cgColor,UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0).cgColor]
              backGroundView.layer.insertSublayer(gradientLayer, at: 0)
                let appearance = UINavigationBarAppearance()
                appearance.configureWithOpaqueBackground()
                appearance.backgroundColor = .clear
                appearance.shadowColor = UIColor.clear
        
    }
    
    func buttonStyle(button:UIButton){
    button.layer.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1).cgColor
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 5
    }
   func sarkilarlist(){
   let sarki1 = SarkiModel(sarkiId: 1, sarkiAdi: "Chandelier", sarkiSanatci: "Sia", sarkiAlbumKapagi: "sia")
   let sarki2 = SarkiModel(sarkiId: 2, sarkiAdi: "Prisoner", sarkiSanatci: "The Weekend,Lana Del Rey", sarkiAlbumKapagi: "prisoner")
   let sarki3 = SarkiModel(sarkiId: 3, sarkiAdi: "Crayz In Love (feat Jay-Z)", sarkiSanatci: "Beyonce", sarkiAlbumKapagi: "beyonce")
   let sarki4 = SarkiModel(sarkiId: 4, sarkiAdi: "Come & Get It", sarkiSanatci: "Selena Gomez", sarkiAlbumKapagi: "come")
   let sarki5 = SarkiModel(sarkiId: 5, sarkiAdi: "Seni Dert Etmeler", sarkiSanatci: "Madrigal", sarkiAlbumKapagi: "dert")
   let sarki6 = SarkiModel(sarkiId: 6, sarkiAdi: "Elfida", sarkiSanatci: "Haluk Levent", sarkiAlbumKapagi: "elfida")
   let sarki7 = SarkiModel(sarkiId: 7, sarkiAdi: "Cambaz", sarkiSanatci: "Mor ve Ötesi", sarkiAlbumKapagi: "mor")
   let sarki8 = SarkiModel(sarkiId: 8, sarkiAdi: "Seni Her Gördüğümde", sarkiSanatci: "Erkin Koray", sarkiAlbumKapagi: "erkinKoray")
        sarkilar.append(sarki1)
        sarkilar.append(sarki2)
        sarkilar.append(sarki3)
        sarkilar.append(sarki4)
        sarkilar.append(sarki5)
        sarkilar.append(sarki6)
        sarkilar.append(sarki7)
        sarkilar.append(sarki8)
        
    }
    
    func sarkilarlist3(){
      
        
        let sarki1 = SarkiModel2(sarkiId: 1, sarkiAd: "Türkçe 2000'ler", sarkiText: "Nil KaraİbrahimGil,Hande Yener ,Tarkan ve Demet Akalın", sarkiFotograf: "ikibinler")
        let sarki2 = SarkiModel2(sarkiId: 2, sarkiAd: "Hits Remixed", sarkiText: "Anne-Marie,Ellie Goulding,Charlotte Plank ve Tom Grennan", sarkiFotograf: "yabanci")
        let sarki3 = SarkiModel2(sarkiId: 3, sarkiAd: "Türkçe 1990'lar", sarkiText: "Sezen Aksu,Mustafa Sandal,Levent Yüksel ve Yaşar", sarkiFotograf: "turkce")
        let sarki4 = SarkiModel2(sarkiId: 4, sarkiAd: "Türkçe Pop Partisi", sarkiText: "Mustafa Sandal,Tarkan,Hande Yener ve Zeynep Bastık", sarkiFotograf: "turkce_pop")
    
        sarkilar2.append(sarki1)
        sarkilar2.append(sarki2)
        sarkilar2.append(sarki3)
        sarkilar2.append(sarki4)
    }

    func collectionViewTasarim(){
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumInteritemSpacing = 0
        tasarim.minimumLineSpacing = 0
        let hucreGenisligi = sarkilarCollectionView.bounds.width - 38
        let hucreUzunlugu = (sarkilarCollectionView.bounds.height - 35)/4
        tasarim.itemSize = CGSize(width: hucreGenisligi, height: hucreUzunlugu)
        sarkilarCollectionView.collectionViewLayout = tasarim
    }
    func collectionViewTasarim2(){
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 0
        let hucreGenisligi = sarkiDerlemesiCollectionView.bounds.width
        print(hucreGenisligi)
        let hucreUzunlugu = sarkiDerlemesiCollectionView.bounds.height
        print(hucreUzunlugu)
        tasarim.itemSize = CGSizeMake(hucreGenisligi/2.2, hucreUzunlugu)
        sarkiDerlemesiCollectionView.collectionViewLayout = tasarim
    }

}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.sarkilarCollectionView {
            return sarkilar.count
        }
    else if collectionView == self.sarkiDerlemesiCollectionView{
        return sarkilar2.count
        }else {
        return sarkilar2.count
    }
       
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.sarkilarCollectionView {
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "sarkiHucre", for: indexPath) as! CollectionViewCell
            let sarki = sarkilar[indexPath.row]
            hucre.sarkiId.text = String(sarki.sarkiId!)
           hucre.sarkiAdi.text = sarki.sarkiAdi!
            hucre.sarkici.text = sarki.sarkiSanatci!
            hucre.albumKapagiImage.image = UIImage(named: sarki.sarkiAlbumKapagi!)
            hucre.albumKapagiImage.layer.cornerRadius = 3
            
            return hucre
        }
        else if collectionView == self.sarkiDerlemesiCollectionView{
         let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "derlemeHucre", for: indexPath) as! SarkiDerlemesiCollectionViewCell
         let sarki = sarkilar2[indexPath.row]
         hucre.derlemeTitle.text = sarki.sarkiAd
         hucre.derlemeLabel.text = sarki.sarkiText
         hucre.derlemeKapagi.image = UIImage(named: sarki.sarkiFotograf!)
         return hucre
        }
        else{
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "derlemeHucre", for: indexPath) as! SarkiDerlemesiCollectionViewCell
            let sarki = sarkilar2[indexPath.row]
            hucre.derlemeTitle.text = sarki.sarkiAd
            hucre.derlemeLabel.text = sarki.sarkiText
            hucre.derlemeKapagi.image = UIImage(named: sarki.sarkiFotograf!)
            return hucre
        }
   
    }
    
}
