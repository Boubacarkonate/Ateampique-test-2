//
//  VirginiePageProfilTest.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 27/09/2023.
//

import SwiftUI

//struct Utilisateur {
//        let prenom: String
//        let nom: String
//        let dateNaissance: String
//        var projetsEnCours: String
//        var projetsFinalises : String
//
//}

struct VirginiePageProfilTest: View {
    var Martin = Utilisateur(prenom: "Martin", nom: "DEFILIS", dateNaissance: "06/04/1988", projetsEnCours: "2", projetsFinalises: "5")
    var body: some View {
   
        ZStack {
            //Début ZStack
            Color("monBackground1")
//                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                //Début VStack1
                
                Image("Martin Defilis")
                    
                    .resizable()
                    .scaledToFit()
                    .frame(width: 210, height: 210)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color("bleu1"), lineWidth: 5))
                    .padding(.top, 70)
                    
                Spacer()
                    
                
                VStack(alignment: .leading, spacing: 10)
                {
                //Début VStack2
                    
                    Text("\(Martin.prenom)  \(Martin.nom)")
                    
                        .font(Font.custom("SpaceGrotesk-Bold", size: 45))
                        .fontWeight(.light)
                        .foregroundColor(Color("bleu1"))
                        
                        
                    
                    Text("Anniversaire \(Martin.dateNaissance)")
                        .font(Font.custom("SpaceGrotesk-Medium", size: 30))
                        .fontWeight(.light)
                        .foregroundColor(Color("bleu1"))
                    
                    
                    Text("Projets en cours \(Martin.projetsEnCours)")
                        .font(Font.custom("SpaceGrotesk-Medium", size: 30))
                        .fontWeight(.light)
                        .foregroundColor(Color("bleu1"))
                    
                    
                    Text("Projets en cours \(Martin.projetsFinalises)")
                        .font(Font.custom("SpaceGrotesk-Medium", size: 30))
                        .fontWeight(.light)
                        .foregroundColor(Color("bleu1"))
                    
                }//Fin VStack2
                Spacer()
                
            }//Fin HStack2
        }//Fin ZStack
    }
}
struct VirginiePageProfilTest_Previews: PreviewProvider {
    static var previews: some View {
        VirginiePageProfilTest()
    }
}
