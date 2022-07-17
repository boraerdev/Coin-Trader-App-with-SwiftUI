//
//  HomeView.swift
//  cyriptoApp
//
//  Created by Bora Erdem on 16.07.2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var vm: HomeViewModel
    var body: some View {
        ZStack{
            
            VStack(spacing: 0.0){
                headerView.padding(.horizontal)
                SearchTextField(aranan: $vm.aranan)
                foontaneTitles
                listView
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
    
    var listView: some View{
        List{
            ForEach(vm.allList) { coin in
                ListRowView(coin: coin)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    
            }
        }
        .listStyle(PlainListStyle())
    }
    
    var foontaneTitles: some View{
        HStack{
            Text("Coin")
                .font(.footnote)
                .foregroundColor(.secondary)
                .onTapGesture {
                    vm.kontrol.toggle()
                    vm.siralaMarketCapRank()
                }
            Spacer()
            Text("Price")
                .font(.footnote)
                .foregroundColor(.secondary)
                .onTapGesture {
                    vm.kontrol.toggle()
                    vm.siralaPrica()
                }
        }.padding([.horizontal,.bottom])
    }
    
    var headerView: some View{
        HStack(alignment: .center){
            CircleButton(title: "info")
            Spacer()
            Text("Coin Trader").font(.title2).fontWeight(.bold)
            Spacer()
            CircleButton(title: "chevron.forward")
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(HomeViewModel())
    }
}
