//
//  YoutubeSearchResponse.swift
//  Netflix Clone
//
//  Created by 周嘉茗 on 2023/7/31.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement

}

struct IdVideoElement: Codable{
    let kind: String
    let videoId: String
}
