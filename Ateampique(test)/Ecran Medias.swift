//
//  Ecran Medias.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 19/09/2023.
//

import SwiftUI

struct Ecran_Medias: View {

    var body: some View {
        
                ZStack {
                    Color("monBackground1")
//                        .ignoresSafeArea()
                        .edgesIgnoringSafeArea(.top)
                    Rectangle()
                        .foregroundColor(Color("bleu2"))
                        .frame(height: 220)
                        .padding(.bottom, 500.0)
                    
                    VStack {
                        
                        Text("EGYPTE ANTIQUE")
                            .font(Font.custom("SpaceGrotesk-Bold", size: 37))
                            .foregroundColor(.white)
                            .padding(.vertical, 30)
        
                        Image("Egypte")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 280, height: 120) .cornerRadius(10)
                            .padding(.bottom, 50)

ScrollView(.vertical) {
    VStack(alignment: .center, spacing: 50) {
        Spacer()
                    HStack(alignment: .center, spacing: 100) {
                        Button {
                                print("Audios")
                        } label:{
                            VStack{
                                Image(systemName: "mic.circle.fill")
                                Text("Audios")
                                    .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                            }
                        }
                            .font(.system(size: 70))
                            .foregroundColor(Color("bleu2"))
                        
                        Button {
                            print("Notes")
                        } label:{
                            VStack {
                                Image(systemName: "newspaper.fill")
                                Text("Notes")
                                    .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                            }
                        }
                        .font(.system(size: 70))
                        .foregroundColor(Color("bleu2"))

                    }

        HStack(alignment: .center, spacing: 100) {
            
            Button {
                print("Vidéos")
            } label:{
                VStack {
                    Image(systemName: "play.circle.fill")
                    Text("Vidéos")
                        .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                }
            }
            .font(.system(size: 70))
            .foregroundColor(Color("bleu2"))
            
            Button {
                print("Images")
            } label:{
                VStack{
                    Image(systemName: "photo.fill")
                    Text("Images")
                        .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                }
                .font(.system(size: 70))
                .foregroundColor(Color("bleu2"))
            }
        }
        Spacer()
                    }
                }
.padding(.bottom, 1)
            }
        }
    }
}

struct Ecran_Medias_Previews: PreviewProvider {
    static var previews: some View {
        Ecran_Medias()
    }
}
