//  ContentView.swift
//  ZAPPEL PHILLIP
//
//  Created by Ghaniassur on 15/09/2023.
//

import SwiftUI

var methode: Bool = false

struct MethodeView: View {
    var body: some View {
        
        NavigationStack {
            ZStack{
                
                Color("monBackground1")
//                    .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.top)
                
                
                VStack {
                    
                    Rectangle()
                        .fill(Color("bleu2"))
                        .frame(height: 210)
                        .overlay(
                            
                            VStack {
                                Text("INFORMATIONS")
                                    .foregroundColor(.white)
                                    .font(Font.custom("SpaceGrotesk-Bold", size : 37))
                                    .multilineTextAlignment(.center)
                                Image(systemName: "info.bubble.fill")
                                    .padding(3)
                                    .imageScale(.large)
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                            }
                        )
                    
                        .padding(.bottom,10) .foregroundColor(Color.white)
                    
                    
                    
                    VStack(spacing: 70) {
                        
                        HStack(alignment: .center, spacing: 40){
                            
                            //            Button 1
                            
                            //                                print("timer") //action
                            //                            } label: {
                            NavigationLink(destination: ZappelPhillip(), label: {
                                VStack {
                                    Image("ImgZappelP")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        .cornerRadius(20)
                                    Text("ZAPPEL PHILIPP").foregroundColor(Color("bleu1"))
                                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                                }
                                
                            })
                            
                            
                            
                            
                            
                            //                            }
                            
                            
                            //Button 2
                            
                            // Button {
                            //     print("écoute") //action
                            //  } label: {
                            NavigationLink(destination: Tdah(), label: {
                                VStack {
                                    Image("TdahImg")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        .cornerRadius(20)
                                    Text("TDAH")
                                        .foregroundColor(Color("bleu1"))                                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                                }
                            }
                                           
                            )    }
                        
                        
                        HStack(alignment: .center, spacing: 40){
                            
                            
                            //            Button 3
                            
                            //                                print("timer") //action
                            //                            } label: {
                            NavigationLink(destination: MePomo(), label: {
                                VStack {
                                    Image("pomodoro")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        .cornerRadius(20)
                                    Text("POMODORO").foregroundColor(Color("bleu1"))
                                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                                    
                                }
                            })
                            
                            
                            
                            
                            
                            //                            }
                            
                            
                            //Button 4
                            
                            // Button {
                            //     print("écoute") //action
                            //  } label: {
                            NavigationLink(destination: BruitsBlancs(), label: {
                                VStack {
                                    Image("bruitsblancs")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        .cornerRadius(20)
                                    Text("BRUITSBLANCS")
                                        .foregroundColor(Color("bleu1"))                                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                                }
                            }
                                           
                            )    }
                        
                        
                        //            Button 5
                        
                        HStack(alignment: .center, spacing: 40) {
                            //  Button {
                            //     print("touche") //action
                            //  } label: {
                            NavigationLink(destination: Kinesthesie(), label: {
                                VStack {
                                    Image("kinesthesie")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        .cornerRadius(20)
                                    Text("KINESTHESIE").foregroundColor(Color("bleu1"))
                                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                                }
                                
                            })
                            
                            //Button 6
                            
                            //  Button {
                            //   print("retiens") //action
                            //  } label: {
                            NavigationLink(destination: Carthographie(), label: {
                                VStack {
                                    Image("carthographie")
                                        .resizable()
                                        .scaledToFit()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        .cornerRadius(20)
                                    Text("CARTOGRAPHIE")
                                        .foregroundColor(Color("bleu1"))
                                        .font(Font.custom("SpaceGrotesk-Medium", size : 20))
                                }
                                
                            })
                            
                        }//Hstack
                        .padding(.horizontal)
                        
                        Spacer()
                    } //fin vstack
                    
                    
                    
                }
            }
            .navigationTitle("")
        }
    }
}




struct Methode_Previews: PreviewProvider {
    static var previews: some View {
        MethodeView()
    }
}


