//
//  Home.swift
//  GameStream
//
//  Created by MacBook on 16/05/22.
//

import SwiftUI
import AVKit

struct Home: View {
    
    @State var tabSelected:Int = 2
    
    var body: some View {
        
        TabView(selection: self.$tabSelected) {
    
            Text("Perfil")
                .font(.system(size: 30,weight: .bold,design: .rounded)).tabItem {
                Image(systemName: "person")
                Text("Perfil")
            }.tag(0)
            
            Text("Juegos")
                .font(.system(size: 30, weight: .bold, design: .rounded)).tabItem {
                Image(systemName: "gamecontroller")
                Text("Juegos")
            }.tag(1)
            
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Inicio")
            }.tag(2)
            
            Text("Favoritos")
                .font(.system(size: 30, weight: .bold, design: .rounded)).tabItem {
                Image(systemName: "heart")
                Text("Favoritos")
            }.tag(3)
        }
        .accentColor(.white)
        .navigationBarBackButtonHidden(true)
    }
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("background"))
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        UITabBar.appearance().isTranslucent = true
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
