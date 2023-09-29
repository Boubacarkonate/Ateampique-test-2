//
//  VirginiePageProgressionTest.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 27/09/2023.
//

import SwiftUI

struct VirginiePageProgressionTest: View {
    
    private struct InfosProgression {
        let libelle : String
        let image : String
    }
    
    private let listeInfosProg = [
        InfosProgression(libelle:"Votre progression", image:"Progression0"),
        InfosProgression(libelle:"C'est parti !", image:"Progression1"),
        InfosProgression(libelle:"Encore un effort !", image:"Progression2"),
        InfosProgression(libelle:"C'est bientôt fini !!!", image:"Progression3"),
        InfosProgression(libelle:"Félicitations !!!!! Votre objectif est atteint avec brio !", image:"Progression4"),
    ]
    
    //private var listeLibelles = ["Votre progression", "C'est parti !", "Encore un effort !", "C'est bientôt fini !!!", "Félicitations !!!!! Votre objectif est atteint avec brio !"]

    @State private var niveauProgression : Int = 0 //obligé de mettre une valeur pour pas laisser le champ vide
    
 //   @State private var libelle : String = "Votre progression"
    
    var body: some View {

        ZStack {
           
                Color("monBackground1")
//                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.top)
            VStack {
                Text("Avez-vous terminé votre cycle Pomodoro ?")
                    .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                    .foregroundColor(Color("bleu1"))
                Button {
                    niveauProgression = (niveauProgression+1)%5

                } label: {
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color("bleu1"))
                            .frame(width: 70.0, height: 50.0)
                            .cornerRadius(10)
                        Text("OUI")
                            .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                            .foregroundColor(.white)
                    }}
                .padding()
            
                let lib = listeInfosProg[niveauProgression].libelle
                ProgressView(lib, value: Double(niveauProgression), total: 4)
                    .padding(30)
                    .font(Font.custom("SpaceGrotesk-Bold", size: 20))
                    .foregroundColor(Color("bleu1"))
                

                
                Image(listeInfosProg[niveauProgression].image)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    
            }
            
            
        }
    }
}

struct VirginiePageProgressionTest_Previews: PreviewProvider {
    static var previews: some View {
        VirginiePageProgressionTest()
    }
}
