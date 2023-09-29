//
//  EcranProjetsEnCours.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 22/09/2023.
//

import SwiftUI

struct EcranProjetsEnCours: View {
    
    let something = [
        GridItem(.fixed(90), spacing :80),
        GridItem(.fixed(90), spacing :80),
    ]
   
    
    var body: some View {
        NavigationStack {
        ZStack {
            Color("monBackground1")
                .ignoresSafeArea()
            Rectangle()
                .foregroundColor(Color("bleu2"))
                .frame(height: 245)
                .padding(.bottom, 500)
            
            VStack {

                        Text("PROJETS EN COURS")
                            .font(Font.custom("SpaceGrotesk-Bold", size: 37))
                            .foregroundColor(.white)
                            .padding(.vertical, 50)

                    Image(systemName: "book.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .padding(.bottom, 50)


            ScrollView(.vertical) {
                Spacer()
                LazyVGrid(columns: something, spacing: 10){
                    ForEach(0...10, id: \.self) { _ in
                        VStack{
                            NavigationLink(destination: EcranEgypteAntique(selectedProj: egypteAntique)) {
                                Image("Egypte")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 120, height: 60)
                                    .cornerRadius(5)
                                
                            }
                            Text("Egypte Antique")
                                .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
struct EcranProjetsEnCours_Previews: PreviewProvider {
    static var previews: some View {
        EcranProjetsEnCours()
    }
}
