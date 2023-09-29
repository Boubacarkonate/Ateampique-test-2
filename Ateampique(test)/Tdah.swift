//
//  Tdah.swift
//  ZAPPEL PHILLIP
//
//  Created by Ghaniassur on 26/09/2023.
//

import SwiftUI

struct Tdah: View {
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
                            Text("QU'EST CE QUE LE TDA/H ?")
                                .foregroundColor(.white)
                                .font(Font.custom("SpaceGrotesk-Bold", size : 40))
                                .multilineTextAlignment(.center)
                            Image(systemName: "brain.head.profile")
                                .padding(3)
                                .imageScale(.large)
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                        }
                    )
                
                    .padding(.bottom,50) .foregroundColor(Color.white)
                
                
                
                
                
                VStack {
                    ScrollView{
                        
                        Image("ImgTda")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        Text("""
Les adultes porteurs d'un TDA/H éprouvent souvent des difficultés à se concentrer pendant de longues périodes. En outre, dans de nombreux cas, un adulte porteur d'un TDA/H sera également facilement distrait ou agira sans réfléchir.
Bien que nous puissions tous ressentir ces symptômes, la réalité est que les personnes porteuses d'un TDA/H constatent souvent que de nombreux domaines de leur vie sont affectés, qu'il s'agisse des études, du travail ou même des relations.

                            ●

Les adultes porteurs d'un TDA/H ressentent souvent les symptômes de manière plus subtile que les enfants. En fait, de nombreux adultes ne savent même pas qu'ils sont porteurs du TDA/H. Ainsi, ces adultes présentent souvent les symptômes spécifiques suivants :

▪️ Mauvaise gestion du temps
▪️ Distractibilité fréquente
▪️ Désorganisation
▪️ Impulsivité
▪️ Faible estime de soi
▪️ Manque de motivation
▪️ Fatigue
▪️ Problèmes relationnels

                            ●

Des questionnaires précis, qui sont maintenant à la disposition des professionnels et professionnelles de santé, permettent d’effectuer une analyse éclairée en fonction de nombreux paramètres.
La grande majorité des TDA/H ne nécessite pas de traitement médical et les médecins peuvent orienter leurs patients et patientes vers d’autres ressources adéquates qui se sont développées ces dernières années. Beaucoup d’organismes proposent, en effet, du soutien et sont ouverts au public sur simple prise de rendez-vous.
""")
                        
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color("bleu1"))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.horizontal, 30)
                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                        
                        Image("ImgTdahh")
                            .resizable()
                            .scaledToFit()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300)
                            .cornerRadius(20)
                        
                        Text("Source:https://www.inserm.fr/c-est-quoi/minute-dattention-cest-quoi-le-tdah/#:~:text=Le%20TDAH%20est%20un%20trouble,de%20d%C3%A9pression%20et%20de%20suicide.")
                            .frame(width: 350)
                        
                        
                    }
                    .padding(.bottom, 1)
                }
                
                Spacer()
            }
            
        }
        
    }
}


struct Tdah_Previews: PreviewProvider {
    static var previews: some View {
        Tdah()
    }
}
