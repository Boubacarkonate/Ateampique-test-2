//
//  Carthographie.swift
//  ZAPPEL PHILLIP
//
//  Created by Ghaniassur on 24/09/2023.
//

import SwiftUI

struct Carthographie: View {
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
                            Text("CARTOGRAPHIE")
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
                        
                        Image("ImgCarthograph")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        Text("""
La carte mentale permet de passer rapidement d'une tâche à l'autre et d'une direction à l'autre, de saisir de nouvelles idées et options - c'est-à-dire de gérer l'impulsivité et les changements d'attention.

                              ●

Transformez les idées et les pensées en une image simple et systématique, avec un thème central et des "tentacules" divergents sous forme de sous-sections.

                              ●

La carte mentale sauvegarde tout le travail afin que vous puissiez y revenir à tout moment, poursuivre le travail ou le transmettre à l'équipe. Elle vous aide également à vous concentrer sur une tâche et à la mener à bien.
""")
                        
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color("bleu1"))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.horizontal, 30)
                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                        
                        Image("ImgCartho")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        Text("Source: https://blog.hubspot.fr/sales/carte-mentale")
                            .frame(width: 350)
                        
                    }
                    .padding(.bottom, 1)
                }
                
                Spacer()
            }
            
        }
        
    }
}


struct Carthographie_Previews: PreviewProvider {
    static var previews: some View {
        Carthographie()
    }
}
