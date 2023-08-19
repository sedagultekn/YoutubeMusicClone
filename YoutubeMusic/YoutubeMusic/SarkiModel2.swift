//
//  SarkiModel2.swift
//  YoutubeMusic
//
//  Created by Seda Gültekin on 19.08.2023.
//

import Foundation
class SarkiModel2{
   
        var sarkiId:Int?
        var sarkiAd:String?
        var sarkiText:String?
        var sarkiFotograf:String?
        
        
    init(sarkiId: Int, sarkiAd: String,sarkiText:String, sarkiFotograf: String) {
            self.sarkiId = sarkiId
            self.sarkiAd = sarkiAd
            self.sarkiFotograf = sarkiFotograf
        self.sarkiText=sarkiText
    }
}
