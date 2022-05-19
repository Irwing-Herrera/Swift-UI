//
//  ContentView.swift
//  GameStream
//
//  Created by MacBook on 11/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("background").ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .padding(.bottom, 40)
                    
                    LoginAndRegisterView()
                }
            }.navigationBarHidden(true)
        }
    }
}

struct LoginAndRegisterView: View {
    
    @State var showLoginView: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Sign In") {
                    self.showLoginView = true
                }
                Spacer()
                Button("Sign Up") {
                    self.showLoginView = false
                }
                Spacer()
            }
        }
        
        Spacer(minLength: 42)
        
        if self.showLoginView {
            LoginView()
        } else {
            RegisterView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
