//
//  Ecran Nouveau Projet.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 15/09/2023.
//

import SwiftUI

struct Ecran_Nouveau_Projet: View {
    
    @State private var pomodoroToggle : Bool = false
    @State private var segmentationToggle : Bool = false
    @State private var bruitsblancsToggle : Bool = false
    @State private var kinesthesieToggle : Bool = false
    @State private var titreTextField : String = ""
    @State private var objectifTextField : String = ""
    @State private var objectifDate = Date()
//
//    func ajouterProjet() {
//        var projet = [Projet]()
//
//        let projetPlus = Projet(titre: "\($titreTextField)", objectif: "\($objectifTextField)", progression: 0, timer: 0, imageCouverture: "", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: "")
//        return listeDesProjets.append(projetPlus)
//    }
    @State private var ajout: [Projet] = [egypteAntique, projetTest, projetCode, projetSolfege,projetPi, projetArchéologieCinema, projetCouture, projetJaponais, projetHistoireArt]


    var body: some View {
        
//        NavigationStack{
        ZStack {
            Color("monBackground1")
                .edgesIgnoringSafeArea(.top)
//                .ignoresSafeArea()

            VStack {
                Text("Nouveau Projet")
                    .font(Font.custom("SpaceGrotesk-Bold", size: 37))
                    .foregroundColor(Color("bleu1"))
                    .padding(.top, -30)
                    .padding(.bottom, -2)

                Form {
                    
                    Group {
                        Text("Titre de mon projet :")
                            .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                            .listRowBackground(Color("monBackground1"))
                            .listRowSeparator(.hidden)
                            .foregroundColor(Color("bleu1"))
                        
                        TextField("Titre...", text: $titreTextField)
                        
                        Text("Quel est mon objectif ?")
                            .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                            .listRowBackground(Color("monBackground1"))
                            .listRowSeparator(.hidden)
                            .foregroundColor(Color("bleu1"))
                        
                        TextField("Maîtriser...", text: $objectifTextField)
                        
                        Text("A quelle date je souhaite atteindre mon objectif ?")
                            .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                            .listRowBackground(Color("monBackground1"))
                            .listRowSeparator(.hidden)
                            .foregroundColor(Color("bleu1"))
                        
                        DatePicker(
                            selection: $objectifDate,   in: Date()..., displayedComponents: [.date])
                        {
                            Image(systemName: "calendar")
                        }
                        
                        .listRowSeparator(.hidden)
                        .foregroundColor(Color("bleu1"))
                        
                        
                        
                        Text("Quelles méthodes je souhaite utiliser ?")
                            .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                            .listRowBackground(Color("monBackground1"))
                            .listRowSeparator(.hidden)
                            .foregroundColor(Color("bleu1"))
                    }
                    Toggle(isOn: $pomodoroToggle){
                        Text("POMODORO")
                            .font(Font.custom("SpaceGrotesk-Medium", size: 20))
                            .foregroundColor(Color("bleu1"))
                    }
                    .listRowBackground(Color("monBackground1"))
                    .tint(Color("bleu2"))
                    .listRowSeparator(.hidden)
                    
                    
                    Toggle(isOn: $segmentationToggle){
                        Text("SEGMENTATION")
                            .font(Font.custom("SpaceGrotesk-Medium", size: 20))
                            .foregroundColor(Color("bleu1"))
                    }
                    .listRowBackground(Color("monBackground1"))
                    .tint(Color("bleu2"))
                    .listRowSeparator(.hidden)
                    
                    
                    Toggle(isOn: $bruitsblancsToggle){
                        Text("BRUITS BLANCS")
                            .font(Font.custom("SpaceGrotesk-Medium", size: 20))
                            .foregroundColor(Color("bleu1"))
                            .listRowSeparator(.hidden)
                    }
                    .listRowBackground(Color("monBackground1"))
                    .tint(Color("bleu2"))
                    .listRowSeparator(.hidden)
                    
                    Toggle(isOn: $kinesthesieToggle){
                        Text("KINESTHESIE")
                            .font(Font.custom("SpaceGrotesk-Medium", size: 20))
                            .foregroundColor(Color("bleu1"))
                    }
                    .listRowBackground(Color("monBackground1"))
                    .tint(Color("bleu2"))
                    .listRowSeparator(.hidden)
                }
            }
            .scrollContentBackground(.hidden)
            VStack {
                Spacer()
                Rectangle()
                    .frame(width: 30, height: 65)
                    .foregroundColor(Color("monBackground1"))
//                    .foregroundColor(.black)
                    .onTapGesture {
                        ajout.append(Projet(titre: titreTextField, objectif: objectifTextField, progression: 0, timer: 0, imageCouverture: "AjouterImage", methodesDuProjet: [pomodoro], mediasDuProjet: [notes], projetTermine: ""))
                    }
                    .offset(x: 90, y: 90)
                
                
                NavigationLink(destination: EcranProjetsEnCoursNavigation(projects: $ajout)) {
                    ZStack {
                        Rectangle()
                            .fill(Color("bleu1"))
                            .frame(width: 150.0, height: 70.0)
                            .cornerRadius(10)
                        VStack {

                                Text("Je crée")
                                    .foregroundColor(.white)
                                    .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                                Text("mon projet")
                                    .foregroundColor(.white)
                                    .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                            }
                    }
                    .padding(.bottom, 10)
                    

                }
//                .onChange(of: Projet) { newValue in
//
//                }
               
                }
            }
        .navigationTitle("")
//        }
    }
}
    struct Ecran_Nouveau_Projet_Previews: PreviewProvider {
        static var previews : some View {
            Ecran_Nouveau_Projet()
        }
    }

