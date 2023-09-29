//
//  EgyptianVideosView.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 27/09/2023.
//
import SwiftUI
import WebKit



struct EgyptianVideosView: View {
    @State private var isVideo1Visible = false
    @State private var isVideo2Visible = false
    @State private var isVideo3Visible = false
    @State private var isVideo4Visible = false
    @State private var isVideo5Visible = false
    @State private var isAddVideoVisible = false // Nouvel état pour le bouton d'ajout
    @State private var userVideos: [(title: String, videoURL: String)] = [] // Tableau pour stocker les vidéos des utilisateurs
    @State private var newVideoTitle = "Cléopatre Reine d'Égypte" // Titre de la nouvelle vidéo
    @State private var newVideoURL = "https://www.youtube.com/watch?v=szAVvlAFe-c" // URL de la nouvelle vidéo
    
    
    struct VideoPlayerView: UIViewRepresentable {
        let urlString: String
        
        func makeUIView(context: Context) -> WKWebView {
            let webView = WKWebView()
            return webView
        }
        
        func updateUIView(_ uiView: WKWebView, context: Context) {
            if let url = URL(string: urlString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    var body: some View {
        
        
        ZStack{
            
            Color("monBackground1")
                .edgesIgnoringSafeArea(.top)
            
            
            VStack {
                                Group {
                Rectangle()
                    .fill(Color("bleu2"))
                    .frame( height: 239)
                    .overlay(
                        VStack {
                            Text("VIDÉOS")
                                .foregroundColor(.white)
                                .font(Font.custom("SpaceGrotesk-Bold", size : 40))
                                .multilineTextAlignment(.center)
                            Image(systemName: "video.bubble.left.fill")
                                .padding(3)
                                .imageScale(.large)
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                        }
                    )
                
                    .padding(.bottom,50) .foregroundColor(Color.white)
                                }
                
                
                
                ScrollView {
                    
                    
                    
                    
                    VStack(spacing: 30) {
                        
                        // Button 1
                        Group {
                            Button(action: {
                                withAnimation {
                                    isVideo1Visible.toggle()
                                }
                            }){
                                Text("▫️L’Égypte antique en mode chronométré ")
                                    .font(.headline)
                                    .padding()
                                    .background(Color("bleu1"))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                            if isVideo1Visible {
                                VideoPlayerView(urlString: "https://www.youtube.com/watch?v=bV4geih91f8&t=58s")
                                    .frame(height: 300)
                                    .cornerRadius(10)
                                    .padding(.bottom, 20)
                                Text("Source: https://www.youtube.com/watch?v=bV4geih91f8")
                                
                                Button(action: {
                                    withAnimation {
                                        isVideo1Visible.toggle()
                                    }
                                }) {
                                    Text("Ranger la vidéo 1")
                                        .font(.headline)
                                        .padding()
                                        .background(Color("bleu1"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                        }
                            //Button 2
                        Group {
                            Button(action: {
                                withAnimation {
                                    isVideo2Visible.toggle()
                                }
                            }) {
                                Text("▫️Le Complot contre Ramsès III sur ARTE  ")
                                    .font(.headline)
                                    .padding()
                                    .background(Color("bleu1"))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                            if isVideo2Visible {
                                VideoPlayerView(urlString: "https://www.youtube.com/watch?v=yiCA8P8DGlc")
                                    .frame(height: 300)
                                    .cornerRadius(10)
                                    .padding(.bottom, 20)
                                Text("Source: https://www.youtube.com/watch?v=yiCA8P8DGlc")
                                
                                Button(action: {
                                    withAnimation {
                                        isVideo2Visible.toggle()
                                    }
                                }) {
                                    Text("Ranger la vidéo 2")
                                        .font(.headline)
                                        .padding()
                                        .background(Color("bleu1"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                            
                            // Button 3
                            
                            Button(action: {
                                withAnimation {
                                    isVideo3Visible.toggle()
                                }
                            }) {
                                Text("▫️Secrets d'histoire Ramsès II: Le retour I                 ")
                                    .font(.headline)
                                    .padding()
                                    .background(Color("bleu1"))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                            if isVideo3Visible {
                                VideoPlayerView(urlString: "https://www.youtube.com/watch?v=Cn6uRyGNZC8")
                                    .frame(height: 300)
                                    .cornerRadius(10)
                                    .padding(.bottom, 20)
                                Text("Source: https://www.youtube.com/watch?v=Cn6uRyGNZC8")
                                
                                Button(action: {
                                    withAnimation {
                                        isVideo3Visible.toggle()
                                    }
                                }) {
                                    Text("Ranger la vidéo 3")
                                        .font(.headline)
                                        .padding()
                                        .background(Color("bleu1"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                        }
                            // Button 4
                            
                            Button(action: {
                                withAnimation {
                                    isVideo4Visible.toggle()
                                }
                            }) {
                                Text("▫️Les 100 merveilles de l’Égypte antique       ")
                                    .font(.headline)
                                    .padding()
                                    .background(Color("bleu1"))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                            if isVideo4Visible {
                                VideoPlayerView(urlString: "https://www.youtube.com/watch?v=aZcFqkp3S48")
                                    .frame(height: 300)
                                    .cornerRadius(10)
                                    .padding(.bottom, 20)
                                Text("Source: https://www.youtube.com/watch?v=aZcFqkp3S48")
                                
                                Button(action: {
                                    withAnimation {
                                        isVideo4Visible.toggle()
                                    }
                                }) {
                                    Text("Ranger la vidéo 4")
                                        .font(.headline)
                                        .padding()
                                        .background(Color("bleu1"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                            
                            // Button 5
                            
                            Button(action: {
                                withAnimation {
                                    isVideo5Visible.toggle()
                                }
                            }) {
                                Text("▫️Tout comprendre sur l'Égypte antique")
                                    .font(.headline)
                                    .padding()
                                    .background(Color("bleu1"))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                            if isVideo5Visible {
                                VideoPlayerView(urlString: "https://www.youtube.com/watch?v=VoEIKNSVj0E")
                                    .frame(height: 300)
                                    .cornerRadius(10)
                                    .padding(.bottom, 20)
                                Text("Source: https://www.youtube.com/watch?v=VoEIKNSVj0")
                                
                                Button(action: {
                                    withAnimation {
                                        isVideo5Visible.toggle()
                                    }
                                }) {
                                    Text("Ranger la vidéo 5")
                                        .font(.headline)
                                        .padding()
                                        .background(Color("bleu1"))
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                            
                            // Bouton pour ajouter une vidéo
                            
                            Button(action: {
                                withAnimation {
                                    isAddVideoVisible.toggle()
                                }
                            }) {
                                Text("Ajouter une vidéo")
                                    .font(.headline)
                                    .padding()
                                    .background(Color("bleu1"))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                            if isAddVideoVisible {
                                
                                VStack {
                                    TextField("Titre de la vidéo", text: $newVideoTitle)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .padding()
                                    
                                    TextField("URL de la vidéo", text: $newVideoURL)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .padding()
                                    
                                    Button(action: {
                                        
                                        let videoURL = newVideoURL
                                        
                                        userVideos.append((title: newVideoTitle, videoURL: videoURL))
                                        
                                        
                                        isAddVideoVisible.toggle()
                                    }) {
                                        Text("Valider")
                                            .font(.headline)
                                            .padding()
                                            .background(Color("bleu1"))
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                    }
                                }                                                   .padding()
                            }
                        
                        //                        Spacer()
                    }
                    .padding()
                }
                .padding(.bottom, 1)
                .navigationBarTitle("Vidéos sur l'Égypte Antique", displayMode: .inline)
            }
        }
    }
}

struct EgyptianVideosView_Previews: PreviewProvider {
    static var previews: some View {
        EgyptianVideosView()
    }
}
