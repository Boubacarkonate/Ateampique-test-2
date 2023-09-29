//
//  Audio.swift

//
//  Created by apprenant75 on 23/09/2023.
//

import SwiftUI
import AVFoundation   //bibliothèque AVFoundation

struct MusicAudio {
    var title: String
    var format: String
}

struct BruitBlanc: View {
    
    
    var music = MusicAudio(title: "bruitBlanc", format: "mp3")
    
    @State private var player: AVPlayer?    // AVPlayer est une classe de la bibliothèque AVFoundation => instanciation
    
    @State private var pause = false
    
    
    // fonction chargement de la musique
    func loadAudio() {
        if let url = Bundle.main.url(forResource: music.title, withExtension: music.format) {
            self.player = AVPlayer(url: url)
        }
    }
    
    
    // fonction lecture
    func boutonPlay() {
        //  le .self fait référence à l'objet actuel, de la vue actuelle
        self.loadAudio() // Chargez l'audio
        self.player?.play() // Démarrez la lectur
    }
    
    // fonction pause
    func BoutonPause() {
        
        self.pause.toggle()
        
        if self.pause {
            self.player?.pause()
        } else {
            self.player?.play()
        }
    }
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                
                Color("bleu2")
//                    .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.top)
                
                VStack(alignment: .center, spacing: 50) {
                    Image(systemName: "cloud.heavyrain.circle.fill")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .foregroundColor(Color("monBackground1"))
                    
                    HStack{
                        
                        
                        Button{
                            
                            boutonPlay()
                            
                        } label: {
                            Image(systemName: "play")
                                .resizable()
                                .frame(width: 40,height: 50)
                                .foregroundColor(Color("monBackground1"))
                        }
                        
                        .padding()
                        
                        Button{
                            
                            BoutonPause()
                            
                        } label: {
                            Image(systemName: "pause")
                                .resizable()
                                .frame(width: 30,height: 50)
                                .foregroundColor(Color("monBackground1"))
                        }
                    }
                }
                
            }
            .navigationTitle("Méthode Bruits Blancs")
            .foregroundColor(.white)

        }
    }
}

struct Audio_Previews: PreviewProvider {
    static var previews: some View {
        BruitBlanc()
    }
}
