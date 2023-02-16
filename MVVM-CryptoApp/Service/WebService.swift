//
//  WebService.swift
//  MVVM-CryptoApp
//
//  Created by mert polat on 16.02.2023.
//

import Foundation

class WebService{
    
    func downloadCurrencies(url : URL,completion : @escaping ([CryptoCurrency]?) -> ()){
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
              let cryptoList = try?  JSONDecoder().decode([CryptoCurrency].self, from: data )
                
                print(cryptoList)
                
                if let cryptoList = cryptoList{
                    completion(cryptoList)
                }
                
            }
        }.resume()
        
        
        
        
    }
}
