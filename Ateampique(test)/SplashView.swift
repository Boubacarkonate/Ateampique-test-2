//
//  ContentView.swift
//  Application
//
//  Created by apprenant75 on 13/09/2023.
//

import SwiftUI

struct SplashView: View {
    
    @State var splashLoaded = false
    
    var body: some View {
        if (splashLoaded) {
            TabViewAteampique()
        } else {
            Splash(splashLoaded: $splashLoaded)
        }
    }
}

struct Splash: View {
    
    let fondCouleur = Color("monBackground1")
    @State var scale = 0.0                      //rend l'image à une éechelle invisible
    @Binding var splashLoaded: Bool
    
    var body: some View {
        ZStack{
            fondCouleur
                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.top)
            
            VStack(alignment: .center, spacing: 100) {
                
                
                Text("Zappel Phillip")
                    .font(.custom("SpaceGrotesk-Bold", size: 40, relativeTo: .title))
                
                
                Image("splashImage")
                    .padding(.bottom, -100.0)
                    
                
                VStack{
                    Text("Apprendre")
                    Text("à apprendre")
                    
                }
                .font(.custom("SpaceGrotesk-Medium", size: 20, relativeTo: .title))
                
            }
            
        }//fin ZSTACK
//        .scaleEffect(scale)
        .animation(.interactiveSpring(
            response: 1,
            dampingFraction: 2,
            blendDuration: 0.4),
                   value: scale)
        .onAppear(){
            scale = 4                   //rend l'image à une échelle visible
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                withAnimation{
                    self.splashLoaded = true
                }
                
            }
        }
        
    }
}

struct AppBody: View {
    
    var body: some View {
        
        Ecran_projets()
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
