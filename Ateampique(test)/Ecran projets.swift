//
//  ContentView.swift
//  (test)
//
//  Created by Apprenant79 on 13/09/2023.
//

import SwiftUI

struct Ecran_projets: View {
    @State private var ajout: [Projet] = [egypteAntique, projetTest, projetCode, projetSolfege,projetPi, projetArchéologieCinema, projetCouture, projetJaponais, projetHistoireArt]
    var body: some View {
        NavigationStack{
            ZStack {
                Color("monBackground1")
                    .edgesIgnoringSafeArea(.top)
                
                VStack {
                    // BOUTON NOUVEAU PROJET
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("monBackground1"))
                            .frame(height: 325.0)
                        
                                NavigationLink(destination: Ecran_Nouveau_Projet()) {
                                   VStack {
                                       Spacer()
                                    Text("NOUVEAU")
                                    Text("PROJET")
                                        Spacer()
                            }
                                .font(Font.custom("SpaceGrotesk-Medium", size: 37))
                                .foregroundColor(Color("bleu1"))
                                    .navigationTitle("")
                        }}
                    // BOUTON PROJET EN COURS
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color("bleu2"))
                            .frame(height: 325.0)
                            NavigationLink(destination:
//                                            EcranProjetsEnCours
                                           EcranProjetsEnCoursNavigation(projects: $ajout)) {
                                VStack {
                                    Spacer()
                                Text("PROJETS")
                                Text("EN COURS")
                                    Spacer()
                            }
                            .font(Font.custom("SpaceGrotesk-Medium", size: 37))
                            .foregroundColor(.white)
                                .navigationTitle("")
                        }
                    }
                    
                    // TABVIEW
                    
//                    HStack (alignment: .center, spacing : 40) {
//                        VStack (alignment: .center, spacing : 2) {
//                            Button {
//                                print("Bouton profil")
//                            } label: {
//                                Image(systemName: "person.circle")
//                            }
//                            .font(.system(size: 50))
//                            .foregroundColor(Color("bleu1"))
//                            
//                            Text("PROFIL")
//                                .foregroundColor(Color("bleu1"))
//                                .font(Font.custom("SpaceGrotesk-Medium", size: 17))
//                        }
//                        VStack (alignment: .center, spacing : 2) {
//                            Button {
//                                print("Bouton projet")
//                            } label: {
//                                Image(systemName: "book")
//                            }
//                            .font(.system(size: 48))
//                            .foregroundColor(Color("bleu1"))
//                            Text("PROJETS")
//                                .foregroundColor(Color("bleu1"))
//                                .font(Font.custom("SpaceGrotesk-Medium", size: 17))
//                        }
//                        VStack (alignment: .center, spacing : 2) {
//                            Button {
//                                print("Bouton méthodes")
//                            } label: {
//                                Image(systemName: "questionmark")
//                            }
//                            .font(.system(size: 50))
//                            .foregroundColor(Color("bleu1"))
//                            Text("METHODES")
//                                .font(Font.custom("SpaceGrotesk-Medium", size: 17))
//                                .foregroundColor(Color("bleu1"))
//                        }
//                        
//                    }
                    
                }
                
            }
            
        }
    }
    
}
    
    struct Ecran_projets_Previews: PreviewProvider {
        static var previews: some View {
            Ecran_projets()
        }
    }
