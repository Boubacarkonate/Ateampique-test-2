//
//  EcranProjetsEnCoursNavigation.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 25/09/2023.
//

import SwiftUI

struct EcranProjetsEnCoursNavigation: View {
    let something = [
        GridItem(.fixed(100), spacing :80),
        GridItem(.fixed(100), spacing :80),
    ]
    @Binding var projects : [Projet]
    
    var body: some View {
//        NavigationStack {
            ZStack {
            Color("monBackground1")
//                .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.top)
                    Rectangle()
                        .foregroundColor(Color("bleu2"))
                        .frame(height: 210)
                        .padding(.bottom, 480.0)
                    
                            VStack {
//                                Spacer()
                                Text("PROJETS EN COURS")
                                    .font(Font.custom("SpaceGrotesk-Bold", size: 37))
                                    .foregroundColor(.white)
                                    .padding(.vertical, 70)
//                                Spacer()
                                Image(systemName: "book.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                    .padding(.vertical, -50)
//                                Spacer()
                                
                                
                                ScrollView(.vertical) {
                                    LazyVGrid(columns: something, spacing: 10){
                                        ForEach(projects) { projets in
                                            VStack(alignment: .center){
                                                Spacer()
                                                NavigationLink(destination: EcranEgypteAntique( selectedProj: projets)) {
                                                    Image(projets.imageCouverture)
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fill)
                                                        .frame(width: 120, height: 60)
                                                        .cornerRadius(5)
                                                }
                                                
                                                Text(projets.titre)
                                                    .foregroundColor(Color("bleu1"))
                                                    .font(Font.custom("SpaceGrotesk-Medium", size: 20))
                                                    .multilineTextAlignment(.center)
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                    
                                    .background(Color("monBackground1"))

                                }
                                .padding(.bottom, 1)
                                
//                                Color("monBackground1")
                }
                            
            }
            .navigationTitle("")
            .padding(.bottom, 1)
//        }
    }
}

struct EcranProjetsEnCoursNavigation_Previews: PreviewProvider {
    static var previews: some View {
        EcranProjetsEnCoursNavigation(projects: .constant([Projet]()))
    }
}
