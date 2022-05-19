//
//  LoginView.swift
//  GameStream
//
//  Created by MacBook on 12/05/22.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var showHomeView: Bool = false
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                GameStreamAuthInput(
                    title: "Email",
                    placeholderText: "example@gmail.com",
                    isEmpty: self.email.isEmpty
                ) {
                    TextField("", text: self.$email).foregroundColor(.white)
                }
                GameStreamAuthInput(
                    title: "Password",
                    placeholderText: "******",
                    isEmpty: self.password.isEmpty
                ) {
                    SecureField("", text: self.$password).foregroundColor(.white)
                }
                
                Text("Did you forget your password?")
                    .font(.footnote)
                    .foregroundColor(Color("dark-cian"))
                    .frame(width: 300, alignment: .trailing)
                    .padding(.bottom)
                
                
                GameStreamAuthButton(text: "Sign In", onclick: SignIn)
                    .padding(.bottom, 50)
                
                Text("Sign in with social networks")
                    .foregroundColor(.white)
                    .frame(width: 300, alignment: .center)
                    .padding(.bottom)
                
                HStack {
                    GameStreamAuthButtonSecond(text: "Facebook", onclick: { print("facebook") })
                    Spacer()
                    GameStreamAuthButtonSecond(text: "Twitter", onclick: { print("twitter") })
                }
                
            }.padding(.horizontal, 77.0)
            
            NavigationLink(
                destination: Home(),
                isActive: $showHomeView,
                label: {
                    EmptyView()
                }
            )
        }
    }
    
    private func SignIn() {
        self.showHomeView = true
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
