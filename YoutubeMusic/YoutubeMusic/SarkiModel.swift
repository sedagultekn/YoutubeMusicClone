//
//  SarkiModel.swift
//  YoutubeMusic
//
//  Created by Seda Gültekin on 18.08.2023.
//

import Foundation
class SarkiModel{
    var sarkiId : Int?
    var sarkiAdi : String?
    var sarkiSanatci : String?
    var sarkiAlbumKapagi : String?
    
    
    init(sarkiId: Int, sarkiAdi: String, sarkiSanatci: String, sarkiAlbumKapagi: String) {
        self.sarkiId = sarkiId
        self.sarkiAdi = sarkiAdi
        self.sarkiSanatci = sarkiSanatci
        self.sarkiAlbumKapagi = sarkiAlbumKapagi
    }
}
