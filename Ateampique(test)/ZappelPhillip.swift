import SwiftUI
import WebKit //YouTube Video que j'ai immporté sur ZappelPhillip mais en Allemand

struct WebView: UIViewRepresentable {
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

struct ZappelPhillip: View {
    var body: some View {
        
        ZStack {
            Color("monBackground1")
//                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Rectangle()
                    .fill(Color("bleu2"))
                    .frame(width: 400, height: 239)
                    .overlay(
                        VStack {
                            Text("QUI EST ZAPPEL PHILIPP ?")
                                .foregroundColor(.white)
                                .font(Font.custom("SpaceGrotesk-Bold", size: 40))
                                .multilineTextAlignment(.center)
                            Image(systemName: "person.crop.circle.fill.badge.questionmark.ar")
                                .padding(3)
                                .imageScale(.large)
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                        }
                    )
                    .padding(.bottom, 1)
                    .foregroundColor(Color.white)
                
                // Ajout d'un WebView pour la vidéo YouTube
                
                WebView(urlString: "https://www.youtube.com/embed/c1tK_ewKuwg?autoplay=1")
                
                VStack {
                    ScrollView {
                        Text("""
Dans son livre « Die Geschichte von dem Zappel-Philipp », le psychiatre allemand Heinrich Hoffmann (1809-1894) propose une vignette clinique qui expose la description d'un enfant désobéissant ou présentant des symptômes d'hyperactivité.

                              ●

Cet article décrit le contexte historique et les aspects biographiques liés à cette approche intéressante pour décrire un syndrome aux enfants et aux adultes.

                              ●

Elle souligne également l’importance d’une approche globale du TDA/H qui prend en compte l’environnement familial et le contexte situationnel des symptômes.
""")
                        .fontWeight(.ultraLight)
                        .foregroundColor(Color("bleu1"))
                        .multilineTextAlignment(.leading)
                        .padding()
                        .padding(.horizontal, 30)
                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                        
                        Text("Source: https://fr.wiktionary.org/wiki/Zappelphilipp")
                            .frame(width: 350)
                    }
                    .padding(.bottom, 1)
                }
                Spacer()
            }
        }
    }
}



struct ZappelPhillip_Previews: PreviewProvider {
    static var previews: some View {
        ZappelPhillip()
    }
}
