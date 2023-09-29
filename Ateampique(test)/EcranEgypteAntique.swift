//
//  EcranBarreDeProgression.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 27/09/2023.
//

import SwiftUI

struct EcranEgypteAntique: View {
    
    var selectedProj: Projet
    
    struct InfosProgression {
        let Texte : String
        let image : String
        
    }
    
    var fond = Color("monBackground1")
    var rectangle = Color("bleu1")
    var ColordeButton = Color ("bleu2")
    
    @State private var selectedColor = false
    
   let ListeinfoProg = [
        InfosProgression(Texte: "Votre progression", image: "progression0"),
        InfosProgression(Texte: "C'est Parti !", image: "Progression1"),
        InfosProgression(Texte: "Encore un effort", image: "Progression2"),
        InfosProgression (Texte : "C'est bientot fini !!", image: "Progression3"),
        InfosProgression(Texte: "Félicitations", image: "Progression4")
    ]
    @State private var niveauProgression : Int = 0
    @State private var calendrier = Date()
    @State private var bouton: Bool = false
    @State private var Progression : [String] = []
    @State private var selectedTab = 0
 
    
    
    var body: some View {
//        NavigationStack {
            ZStack{
                
                fond
//                    .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.top)
                VStack {
                    
                    ColordeButton
                        .frame(height: 210)
                        .overlay {
                            VStack {
                                Spacer()
                                Text(selectedProj.titre)
//                                Text("EGYPTE ANTIQUE")
                                    .foregroundColor(.white)
                                    .font(Font.custom("SpaceGrotesk-Bold",size: 37))
                                Spacer()
                                Image(selectedProj.imageCouverture)
//                                Image("Egypte")// image du projet
                                
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 280, height: 120)     .cornerRadius(10)
                                Spacer()
                                
                            }
                        }
                    HStack(alignment: .center,spacing:40)
                    {
                        VStack {
                            
                            Button {
                                selectedTab = 0
                            }
                        label: {
                            VStack{
                                Image(systemName:"calendar")
                                    .foregroundColor(selectedTab == 0 ? .cyan : rectangle)
                                    .font (.system(size:30))
                                
                                
                                Text("Calendrier")
                                    .foregroundColor(selectedTab == 0 ? .cyan : rectangle)
                                    .font(Font.custom("SpaceGrotesk-Bold",size: 13))

                                
                            }
                        }
                            
                            
                        }
                        VStack{
                            
                            Button {
                                selectedTab = 1
                            } label: {
                                VStack{
                                    
                                    Image(systemName: "figure.highintensity.intervaltraining")
                                        .foregroundColor(selectedTab == 1 ? .cyan : rectangle)
                                        .font (.system(size:25))
                                    
                                    
                                    Text("Progression")
                                        .foregroundColor(selectedTab == 1 ? .cyan : rectangle)
                                        .font(Font.custom("SpaceGrotesk-Bold",size: 13))
                                    
                                    
                                }
                            }
                            
                            
                        }
                        
                        VStack {

                    NavigationLink(destination: EcranTimer())
                              {
                                VStack{
                                    Image(systemName: "timer")
                                        .foregroundColor(selectedTab == 2 ? .cyan : rectangle)
                                        .font (.system(size:30))
                                    
                                    
                                    Text("Timer")
                                        .foregroundColor(selectedTab == 2 ? .cyan : rectangle)
                                        .font(Font.custom("SpaceGrotesk-Bold",size: 13))
                                }
                            }
                            
                            
                        }
                        VStack{
                            
                            Button {
                                selectedTab = 3
                                //action
                            } label: {
                                VStack{
                                    Image(systemName: "crop")
                                        .foregroundColor(selectedTab == 3 ? .cyan : rectangle)
                                        .font (.system(size:30))
                                    
                                    
                                    Text("Formats")
                                        .foregroundColor(selectedTab == 3 ? .cyan : rectangle)
                                        .font(Font.custom("SpaceGrotesk-Bold",size: 13))
                                }
                            }
                            
                        }
                    }
                    if selectedTab == 0 {
                        
                        DatePicker(
                            "Start Date",
                            selection: $calendrier,
                            displayedComponents: [.date])
                        .datePickerStyle(.graphical)
                        .presentationDetents([.medium, .large])
                        .frame(height: 400)
                    } else if selectedTab == 1 {
                        VirginiePageProgressionTest()
                            .frame(height: 400)
                        
                    }
//                    else if selectedTab == 2{
                        
                       
                        
                        
                        
//                    }
                    else if selectedTab == 3{
                        Mymedia()
                            .frame(height: 400)
                        
                    }
                    
                  
                

                    
                } // premiere VStack
                
                
            }
            .navigationTitle("")
//        }
    }
}

struct EcranEgypteAntique_Previews: PreviewProvider {
    static var previews: some View {
        EcranEgypteAntique(selectedProj: egypteAntique)
    }
}
