//
//  Exercice Button.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 13/09/2023.
//

import SwiftUI

struct Exercice_Button_2: View {
    
    @State private var background: Color = .black
    
    var body: some View {
        
        ZStack {
            background.ignoresSafeArea()
            HStack {
                Spacer()
                Button {
                    background = .black
                }
            label: {
                Text("Black")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(20)
            }
                Spacer()
                Button {
                    background = Color.red
                }
            label: {
                Text("Red")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.red)
            .cornerRadius(20)
                
                Spacer()
                Button {
                    background = .green
                }
            label: {
                Text("Green")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(20)
            }
                Spacer()
                Button {
                    background = .blue
                }
            label: {
                Text("Blue")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20)
            }
                Spacer()
            }
            
        }
        
    }}
        struct Exercice_Button_2Previews: PreviewProvider {
        static var previews: some View {
            Exercice_Button_2()
        }
    }

