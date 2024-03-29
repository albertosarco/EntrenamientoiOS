//
//  Game.swift
//  Entrenamiento
//
//  Created by Jesus Alberto Sarco Giannini on 21/07/2019.
//  Copyright © 2019 Smart Builders C.A. All rights reserved.
//

public struct Game: Codable  {
    
    var id: Int
    var name: String
    var stagesList: [GameStage]
    var videoId: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case stagesList
        case videoId
    }
}
