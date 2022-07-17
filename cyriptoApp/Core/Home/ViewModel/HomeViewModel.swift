//
//  HomeViewModel.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 16.07.2022.
//

import Foundation
import SwiftUI
import Combine

class HomeViewModel: ObservableObject{
    @Published var aranan: String = ""
    private var vm = GetCoinsService()
    @Published var allList: [CoinModel] = []
    private var cancellable = Set<AnyCancellable>()
    
    init(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.scsrucibeData()
        }
    }
    
    var kontrol: Bool = false
    func siralaMarketCapRank() {
        let degistir : Bool = kontrol
        self.allList =  allList.sorted { degistir ? $0.market_cap_rank ?? 0 < $1.market_cap_rank ?? 0 : $0.market_cap_rank ?? 0 > $1.market_cap_rank ?? 0 }
        
    }
    
    func siralaPrica(){
        let degistir : Bool = kontrol
        self.allList = allList.sorted{degistir ? $0.current_price ?? 0 > $1.current_price ?? 0 : $0.current_price ?? 0 < $1.current_price ?? 0}
    }
    
    func scsrucibeData(){
        vm.$allCoins
            .sink { [weak self] (gelenData) in
                self?.allList = gelenData
            }
            .store(in: &cancellable)
        
        
        $aranan
            .combineLatest(vm.$allCoins)
            .map { (text, startingCoin) -> [CoinModel] in
                guard !text.isEmpty else {return startingCoin}
                let lowercased = text.lowercased()
                
                let filteredCoins = startingCoin.filter { coin in
                    return coin.name!.lowercased().contains(lowercased)  ||
                    coin.symbol!.lowercased().contains(lowercased) ||
                    coin.id!.lowercased().contains(lowercased)
                }
                  
                return filteredCoins
                
            }
            .sink { [weak self] returned in
                self?.allList = returned
            }
            .store(in: &cancellable)
    }
    
}
