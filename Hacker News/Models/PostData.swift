//
//  PostData.swift
//  Hacker News
//
//  Created by Felipe Vallejo on 9/5/22.
//

import Foundation

struct Results : Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let points: Int
    let url: String?
    let objectID: String
}
