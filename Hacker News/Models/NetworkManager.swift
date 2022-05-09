//
//  NetworkManager.swift
//  Hacker News
//
//  Created by Felipe Vallejo on 9/5/22.
//

import Foundation

class NetworkManager: ObservableObject {
        
    @Published var posts = [Post]()
    
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search_by_date?tags=story") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, err in
                if err == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                        let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
        
    }
}
