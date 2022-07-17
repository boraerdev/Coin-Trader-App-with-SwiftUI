//
//  ListRowView.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 17.07.2022.
//

import SwiftUI

struct ListRowView: View {
    var coin: CoinModel
    var body: some View {
        HStack(spacing: 0.0){
            Text(coin.market_cap_rank?.toString() ?? "")
                .frame(minWidth: 30)
                .font(.footnote)
                .foregroundColor(.secondary)
            AsyncImage(url: URL(string: coin.image ?? ""), content: { image in
                image.resizable()
            }, placeholder: {
                ProgressView()
            })
                
                .frame(width: 40, height: 40)
                
            Text(coin.symbol?.uppercased() ?? "")
                .fontWeight(.bold)
                .padding(.leading,10)
                Spacer()
            VStack(alignment: .trailing){
                Text(coin.current_price?.sinirla6basamakString() ?? "")
                Text(coin.price_change_percentage_24h?.yuzdeString() ?? "")
                    .foregroundColor(coin.price_change_24h ?? 0 >= 0 ? Color.green : Color.red)
            }
        }
        
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(coin: PreviewComps().coin)
            .previewLayout(.sizeThatFits)
    }
}
