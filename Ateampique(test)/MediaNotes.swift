//
//  Notes.swift
//
//  Created by apprenant75 on 27/09/2023.
//

import SwiftUI

struct MediaNotes: View {
    
    @State var textEditorText: String = ""
    @State var saveText: String = ""
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .center, spacing: 30) {
                TextEditor(text: $textEditorText)   // création du l'éditeur de texte
                    .frame(height: 350)
               
                    .shadow(color: Color("bleu1"), radius: 3, x: 0, y: 0)
                //                    .foregroundColor(Color("bleu1"))
                    .padding()
                Button{
                    saveText = textEditorText  // au clique, le textEdite sera le saveText
                } label: {
                    Text("Enregistrer")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("bleu1"))
                        .cornerRadius(10)
                }
                Text(saveText)  // textEdite est visible ici
                Spacer()
                
            }.padding()
                .background(Color("monBackground1"))
                .navigationTitle("Notes")
        }
        
    }
}

struct MediaNotes_Previews: PreviewProvider {
    static var previews: some View {
        MediaNotes()
    }
}
