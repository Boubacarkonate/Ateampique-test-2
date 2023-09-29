//
//  Mymedia.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 27/09/2023.
//

import SwiftUI

struct Mymedia: View {
    var body: some View {
//
        NavigationStack
        {
           HStack(alignment: .center, spacing: 60)
                {
               
                    VStack(alignment: .center, spacing: 70) {
                        NavigationLink {
                           BruitBlanc()
                        } label:{
                            VStack{
                                Image(systemName: "mic.circle.fill")
                                Text("Audios")
                                    .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                                    
                            }
                        }
                        .font(.system(size: 60))
                        .foregroundColor(Color("bleu1"))
                        
                            NavigationLink(destination: MediaNotes()) {
                                VStack {
                                Image(systemName: "newspaper.fill")
                                Text("Notes")
                                    .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                            }
                        }
                        .font(.system(size: 60))
                        .foregroundColor(Color("bleu1"))
                        
                    }
                    
                    VStack(alignment: .center, spacing: 70) {
                        
                        NavigationLink(destination: EgyptianVideosView()) {
                            VStack {
                                Image(systemName: "play.circle.fill")
                                Text("Vidéos")
                                    .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                            }
                        }
                        .font(.system(size: 60))
                        .foregroundColor(Color("bleu1"))
                        
                        Button {
                            
                        } label:{
                            VStack{
                                Image(systemName: "photo.fill")
                                Text("Images")
                                    .font(Font.custom("SpaceGrotesk-Medium", size: 23))
                            }
                            .font(.system(size: 60))
                            .foregroundColor(Color("bleu1"))
                        }
                    }
                    
                }
//                .padding(.bottom, -500)

        }
    }
}

struct Mymedia_Previews: PreviewProvider {
    static var previews: some View {
        Mymedia()
    }
}
