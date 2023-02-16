//
//  CryptoViewModel.swift
//  MVVM-CryptoApp
//
//  Created by mert polat on 16.02.2023.
//

import Foundation

struct CryptoListViewModel{
    
    let cryptoCurrencyList :[CryptoCurrency]
  
}

extension CryptoListViewModel{
    
    func numberOfRowsInSection() -> Int{
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(_ index: Int) -> CryptoViewModel{
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(crytoCurrency: crypto)
    }
    
}

struct CryptoViewModel{
    let crytoCurrency : CryptoCurrency
    
    var name : String {
        return self.crytoCurrency.currency!
    }
    
    var price : String{
        return self.crytoCurrency.price!
    }
}
