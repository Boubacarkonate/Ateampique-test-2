//
//  MePomo.swift
//  ZAPPEL PHILLIP
//
//  Created by Ghaniassur on 22/09/2023.
//

import SwiftUI



struct MePomo: View {
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
                            Text("METHODE POMODORO")
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
                        Image("ImgPomo")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        Text("""
La gestion du temps au travail peut parfois sembler une tâche insurmontable. Les courriels arrivent sans arrêt, les réunions s’accumulent, et la liste des tâches à faire semble sans fin. C’est ici que la technique Pomodoro peut entrer en jeu.

                           ●

Cette technique vous permet de découper votre charge de travail en fragments digestes, et augmente votre capacité de concentration, tout en évitant l’épuisement mental.

                           ●

Le concept est simple :
vous travaillez pendant un certain temps, généralement 25 minutes, puis vous prenez une courte pause de 5 minutes. Cette période de travail suivie d'une pause est ce que l'on appelle un « Pomodoro. »
""")
                        
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color("bleu2"))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.horizontal, 30)
                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                        
                        Image("ImgPomodo")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        
                        Text("Source: https://www.lesbonsprofs.com/blog/rester-concentre-et-efficace-avec-methode-pomodoro/ ")
                            .frame(width: 350)
                        
                    }
                    .padding(.bottom, 1)
                }
                
                Spacer()
            }
            
        }
        
    }
}



struct MePomo_Previews: PreviewProvider {
    static var previews: some View {
        MePomo()
    }
}
