//
//  Exercice Button.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 13/09/2023.
//

import SwiftUI

struct Exercice_Button: View {
    
    @State private var door :Bool = true
    var knockKnock = "Knockknock"
    var jack = "Shining"
    
    var body: some View {
        
        
        
        ZStack {
            Color(.black)
//                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.top)
            VStack {
                Spacer()
                Image(door ? knockKnock: jack)
                    .resizable()
                    .font(.system(size: 20))
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke())
                    .frame(width: 350.0, height: 295.0)
            Spacer()
                Button {
                    door.toggle()
                }
            label: {
                Text(door ? "Who's there ?" : "😨                 ")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(door ? .blue : .red)
                    .cornerRadius(20)
            }
                Spacer()
            }
        }
    }
}

struct Exercice_Button_Previews: PreviewProvider {
    static var previews: some View {
        Exercice_Button()
    }
}
