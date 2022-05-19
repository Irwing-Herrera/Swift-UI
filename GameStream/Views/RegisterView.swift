//
//  RegisterView.swift
//  GameStream
//
//  Created by MacBook on 16/05/22.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var passwordRepeat: String = ""
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .center) {
                
                Text("Choose a profile photo")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                Text("You can change or choose later")
                    .foregroundColor(.gray)
                    .fontWeight(.light)
                    .font(.footnote)
                    .padding(.bottom)
                
                
                Button(action: SelectPhoto, label: {
                    ZStack {
                        Image("avatar")
                            .resizable()
                            .clipShape(Circle())
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                            
                        
                        Image(systemName: "camera")
                            .foregroundColor(.white)
                    }
                }).overlay(
                    RoundedRectangle(
                        cornerRadius: 50.0
                    ).stroke(
                        Color("dark-cian"),
                        lineWidth: 1.0
                    )
                )
                
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
                    GameStreamAuthInput(
                        title: "Confirm Password*",
                        placeholderText: "******",
                        isEmpty: self.password.isEmpty
                    ) {
                        SecureField("", text: self.$password).foregroundColor(.white)
                    }
                    
                    GameStreamAuthButton(text: "Sign Up", onclick: SignUp)
                        .padding(.bottom, 40)
                    
                    Text("Sign up with social networks")
                        .foregroundColor(.white)
                        .frame(width: 300, alignment: .center)
                        .padding(.bottom)
                    
                    HStack {
                        GameStreamAuthButtonSecond(text: "Facebook", onclick: { print("facebook") })
                        Spacer()
                        GameStreamAuthButtonSecond(text: "Twitter", onclick: { print("twitter") })
                    }
                }
                
                
                
            }.padding(.horizontal, 77.0)
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

private func SelectPhoto() -> Void {
    print("SelectPhoto")
}

private func SignUp() {
    print("SignUp")
}
