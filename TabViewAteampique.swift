//
//  TabView.swift
//  Ateampique(test)
//
//  Created by Apprenant79 on 20/09/2023.
//

import SwiftUI

struct TabViewAteampique: View {
    var body: some View {
        
        
        
        TabView {
            
            
            VirginiePageProfilTest()
                .tabItem {
                    Label("PROFIL", systemImage: "person.circle")
                }
            
            Ecran_projets()
                .tabItem {
                    Label("PROJETS", systemImage: "book")
                }
            
            
            MethodeView()
                .tabItem {
                    Label("INFOS", systemImage: "questionmark")
                }
            
        }
        .tint(Color("bleu1"))
    }
}

struct TabViewAteampique_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAteampique()
    }
}
