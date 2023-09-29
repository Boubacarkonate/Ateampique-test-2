//
//  BruitsBlancs.swift
//  ZAPPEL PHILLIP
//
//  Created by Ghaniassur on 22/09/2023.
//

import SwiftUI

struct BruitsBlancs: View {
    var body: some View {
        
        
        ZStack{
            
            Color("monBackground1")
//                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.top)
            
            
            VStack {
                
                Rectangle()
                    .fill(Color("bleu2"))
                    .frame(width: 400, height: 239)
                    .overlay(
                        VStack {
                            Text("BRUITS BLANCS")
                                .foregroundColor(.white)
                                .font(Font.custom("SpaceGrotesk-Bold", size : 40))
                                .multilineTextAlignment(.center)
                            Image(systemName: "book.fill")
                                .padding(3)
                                .imageScale(.large)
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                        }
                    )
                
                    .padding(.bottom,50) .foregroundColor(Color.white)
                
                
                
                
                
                VStack {
                    ScrollView{
                        
                        Image("ImgAsm")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        Text("""
Les bruits blancs sont des sons comportant toutes les fréquences de 20 à 20 000 Hertz.
Ils permettent de masquer les sons environnants et ainsi de maintenir la concentration, mais pas seulement.

                             ●

En réaction à ces stimulations sonores, le cerveau  émet des ondes spécifiques qui provoquent chez l’auditeur une forme d’hypnose sonore légère.

                             ●

Certaines playlists de bruits blancs peuvent être composées de sons de la nature ou de vibrations à une certaine fréquence, afin d’également favoriser la relaxation et permettre de rester concentré sur une tâche.

""")
                        
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color("bleu1"))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.horizontal, 30)
                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                        
                        Image("ImgAsmrr")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        Text("Source: https://www.bettersleep.com/fr/blog/12-faits-etonnants-sur-lasmr/")
                            .frame(width: 350)
                        
                    }
                    .padding(.bottom, 1)
                }
                
                Spacer()
            }
            
        }
        
    }
}


struct BruitsBlancs_Previews: PreviewProvider {
    static var previews: some View {
        BruitsBlancs()
    }
}
