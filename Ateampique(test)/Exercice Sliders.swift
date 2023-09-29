//
//  Exercice Sliders.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 14/09/2023.
//

import SwiftUI

struct Exercice_Sliders: View {
    
    @State private var color1: Double = 0
    @State private var color2: Double = 0
    @State private var color3: Double = 0


    var body: some View {
        VStack {
            Spacer()
            HStack {
                Color(.white)
                ZStack {
                    Color(red: color1/255, green: color2/255, blue: color3/255)
                }
                Color(.white)
            }
            .frame(width: 990.0)
            VStack {
                Spacer()
                Text("Rouge : \(String(format:"%.0f", color1))")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Slider(value: $color1, in: 0...255)
                    .frame(width : 300)
                Spacer()
                Text("Vert : \(String(format:"%.0f", color2))")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Slider(value: $color2, in: 0...255)
                    .frame(width : 300)
                Spacer()
                Text("Bleu : \(String(format:"%.0f", color3))")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Slider(value: $color3, in: 0...255)
                    .frame(width : 300)
                Spacer()
            }
            .frame(height: 430.0)
        }
    }
    }
    
    struct Exercice_Sliders_Previews: PreviewProvider {
        static var previews: some View {
            Exercice_Sliders()
        }
    }

