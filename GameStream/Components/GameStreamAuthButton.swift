//
//  GameStreamAuthButton.swift
//  GameStream
//
//  Created by MacBook on 12/05/22.
//

import SwiftUI

struct GameStreamAuthButton: View {
    
    // MARK: - Private Variables
    
    private let text: String
    fileprivate let onclick: (() -> Void)!
    
    // MARK: - Life Cycle
    
    init(
        text: String,
        onclick: @escaping () -> Void
    ) {
        self.text = text
        self.onclick = onclick
    }
    
    // MARK: - View
    
    var body: some View {
        Button(action: self.onclick) {
            Text(self.text)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(
                    maxWidth: .infinity,
                    alignment: .center
                )
                .padding(
                    EdgeInsets(
                        top: 11,
                        leading: 18,
                        bottom: 11,
                        trailing: 18
                    )
                )
                .overlay(
                    RoundedRectangle(
                        cornerRadius: 6.0
                    ).stroke(
                        Color("dark-cian"),
                        lineWidth: 1.0
                    ).shadow(
                        color: .white,
                        radius: 12
                    )
                )
        }.background(Color("background"))
    }
}

struct GameStreamAuthButton_Previews: PreviewProvider {
    
    static var previews: some View {
        GameStreamAuthButton(
            text: "Test",
            onclick: { print("test") }
        ).padding(.bottom, 40)
    }
}
