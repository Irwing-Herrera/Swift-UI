//
//  GameStreamAuthButtonSecond.swift
//  GameStream
//
//  Created by MacBook on 12/05/22.
//

import SwiftUI

struct GameStreamAuthButtonSecond: View {
    
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
                .font(.subheadline)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding(.vertical, 10.0)
                .frame( maxWidth: .infinity, alignment: .center)
                .background(Color(red: 33/255, green: 49/255, blue: 79/255, opacity: 1.0))
                .clipShape(RoundedRectangle(cornerRadius: 16.0))
        }
    }
}

struct GameStreamAuthButtonSecond_Previews: PreviewProvider {
    
    static var previews: some View {
        GameStreamAuthButtonSecond(
            text: "Test",
            onclick: { print("facebook") }
        )
    }
}
