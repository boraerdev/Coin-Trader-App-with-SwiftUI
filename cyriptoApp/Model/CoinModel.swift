//
//  CoinModel.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 16.07.2022.
//

import Foundation

struct CoinModel: Identifiable, Codable{
        let id : String?
        let symbol : String?
        let name : String?
        let image : String?
        let current_price : Double?
        let market_cap : Double?
        let market_cap_rank : Double?
        let fully_diluted_valuation : Double?
        let total_volume : Double?
        let high_24h : Double?
        let low_24h : Double?
        let price_change_24h : Double?
        let price_change_percentage_24h : Double?
        let market_cap_change_24h : Double?
        let market_cap_change_percentage_24h : Double?
        let circulating_supply : Double?
        let total_supply : Double?
        let max_supply : Double?
        let ath : Double?
        let ath_change_percentage : Double?
        let ath_date : String?
        let atl : Double?
        let atl_change_percentage : Double?
        let atl_date : String?
        let last_updated : String?
        let sparkline_in_7d : Sparkline_in_7d?
        let price_change_percentage_24h_in_currency : Double?

        enum CodingKeys: String, CodingKey {

            case id = "id"
            case symbol = "symbol"
            case name = "name"
            case image = "image"
            case current_price = "current_price"
            case market_cap = "market_cap"
            case market_cap_rank = "market_cap_rank"
            case fully_diluted_valuation = "fully_diluted_valuation"
            case total_volume = "total_volume"
            case high_24h = "high_24h"
            case low_24h = "low_24h"
            case price_change_24h = "price_change_24h"
            case price_change_percentage_24h = "price_change_percentage_24h"
            case market_cap_change_24h = "market_cap_change_24h"
            case market_cap_change_percentage_24h = "market_cap_change_percentage_24h"
            case circulating_supply = "circulating_supply"
            case total_supply = "total_supply"
            case max_supply = "max_supply"
            case ath = "ath"
            case ath_change_percentage = "ath_change_percentage"
            case ath_date = "ath_date"
            case atl = "atl"
            case atl_change_percentage = "atl_change_percentage"
            case atl_date = "atl_date"
            case last_updated = "last_updated"
            case sparkline_in_7d = "sparkline_in_7d"
            case price_change_percentage_24h_in_currency = "price_change_percentage_24h_in_currency"
        }

   
}

struct Sparkline_in_7d : Codable {
    let price : [Double]?

    enum CodingKeys: String, CodingKey {

        case price = "price"
    }
}
