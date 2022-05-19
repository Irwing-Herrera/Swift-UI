//
//  GameStreamAuthInput.swift
//  GameStream
//
//  Created by MacBook on 11/05/22.
//

import SwiftUI

struct GameStreamAuthInput<Content: View>: View {
    
    // MARK: - Private Variables
    
    private let input: () -> Content
    private let title: String
    private let placeholderText: String
    private let isEmpty: Bool
    
    // MARK: - Life Cycle
    
    init(
        title: String,
        placeholderText: String,
        isEmpty: Bool,
        input: @escaping () -> Content
    ) {
        self.input = input
        self.title = title
        self.placeholderText = placeholderText
        self.isEmpty = isEmpty
    }
    
    // MARK: - View
    
    var body: some View {
        Text(title).foregroundColor(Color("dark-cian"))
        
        ZStack(alignment: .leading) {
            if self.isEmpty {
                Text(verbatim:self.placeholderText)
                    .font(.caption)
                    .foregroundColor(Color("light-gray"))
            }
            self.input()
        }
        Divider()
            .frame(height: 1)
            .background(Color("dark-cian"))
            .padding(.bottom)
    }
}

struct GameStreamAuthInput_Previews: PreviewProvider {
    
    @State static var password: String = ""
    
    static var previews: some View {
        GameStreamAuthInput(
            title: "Confirm Password*",
            placeholderText: "******",
            isEmpty: true
        ) {
            SecureField("", text: self.$password).foregroundColor(.white)
        }
    }
}
