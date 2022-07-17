//
//  GetCoinViewModel.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 17.07.2022.
//

import Foundation
import SwiftUI
import Combine

class GetCoinViewModel: ObservableObject {
    
    
    
    @Published var allCoins: [CoinModel] = []
    @StateObject var vm = GetCoinsService()
    private var cancellable = Set<AnyCancellable>()
    init(){
            self.sucscribeData()
    }
    
    func sucscribeData(){
        vm.$allCoins
            .sink { [weak self] gelenData in
                self?.allCoins = gelenData
            }
            .store(in: &cancellable)
    }
    
}
