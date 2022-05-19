//
//  HomeView.swift
//  GameStream
//
//  Created by MacBook on 16/05/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var findText: String = ""
    
    var body: some View {
        
        ZStack() {
            
            Color("background").ignoresSafeArea()
            
            VStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .padding(.horizontal, 11.0)
                
                HStack {
                    Button(action: searchText, label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(self.findText.isEmpty ? Color(.yellow) : Color("dark-cian"))
                    })
                    
                    ZStack(alignment: .leading) {
                        
                        if self.findText.isEmpty {
                            Text("Buscar un video")
                            .foregroundColor(Color(red: 174/255, green: 177/255, blue: 185/255, opacity: 1.0))
                        }
                        
                        TextField("", text: self.$findText)
                            .foregroundColor(.white)
                        
                    }
                }
                .padding([.top, .leading, .bottom], 11.0)
                .background(Color("Blue-Gray"))
                .clipShape(Capsule())
                
            }.padding(.horizontal, 18.0)
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

private func searchText() -> Void {
    
}
