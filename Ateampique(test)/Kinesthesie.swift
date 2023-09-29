//
//  Kinesthesie.swift
//  ZAPPEL PHILLIP
//
//  Created by Ghaniassur on 24/09/2023.
//

import SwiftUI

struct Kinesthesie: View {
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
                            Text("KINESTHESIE")
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
                        
                        Image("ImgKinesthe")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        Text("""
L’apprentissage kinesthésique engage le corps dans le processus d’apprentissage, ce qui favorise la concentration et la rétention des informations.

                             ●

Cette technique d’apprentissage des mots de vocabulaire, associe un mouvement spécifique à chaque mot pour renforcer la mémoire.

                             ●

Les adultes manquant de concentration peuvent bénéficier de techniques d’apprentissage qui impliquent le mouvement physique.  Il faut s’habituer à utiliser des gestes ou des mouvements pour représenter des concepts ou des idées.
""")
                        
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color("bleu1"))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.horizontal, 30)
                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                        
                        Image("ImgKinesthesi")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        Text("Source: https://www.ludoacademie.com/blog/les-profils-dapprentissage")
                            .frame(width: 350)
                    }
                    .padding(.bottom, 1)
                }
                
                Spacer()
            }
            
        }
        
    }
}

struct Kinesthesie_Previews: PreviewProvider {
    static var previews: some View {
        Kinesthesie()

}
}
