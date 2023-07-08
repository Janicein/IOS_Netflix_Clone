//
//  API caller.swift
//  Netflix Clone
//
//  Created by 周嘉茗 on 2023/7/8.
//

import Foundation


struct Constants {
    static let API_KEY = "81ca08c6c5b06843ff4f86c980f2c08f"
    static let baseURL = "https://api.themoviedb.org"
}



class APICaller {
    static let shared = APICaller()
    
    
    func getTrendingMovies(completion: @escaping (String) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do{
                let results = try JSONDecoder().decode(TrendingMoviesResponse.self, from: data)
                print(results)
            }catch{
                print(error.localizedDescription)
                
            }
        }
        
        
        task.resume()
        
        
        
    }
}
