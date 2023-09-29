////
////  ContentView.swift
////  Ateampique(test)
////
////  Created by Apprenant79 on 26/09/2023.
////
//
import SwiftUI
//import AVFoundation

struct EcranTimer: View {
    
    @State var timerTravail: Double = 25
    @State var timerStartTravail: Bool = false
    @State var timer = Timer.publish(every: 1, on: .main, in:.tracking).autoconnect()
    
    func start() {
        timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    }
    func pause(){
        timer.upstream.connect().cancel()
    }
    func reset() {
        timerTravail = 25
        timer = Timer.publish(every: 1, on: .main, in: .tracking).autoconnect()
    }
    
    @State var timerPause: Double = 5
    @State var timerStartPause: Bool = false
    @State var timerp = Timer.publish(every: 1, on: .main, in: .tracking).autoconnect()
    
    func startPause() {
        timerp = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    }
    func pausePause(){
        timerp.upstream.connect().cancel()
    }
    func resetPause() {
        timerPause = 5
        timerp = Timer.publish(every: 1, on: .main, in: .tracking).autoconnect()
    }
    
    
    
    var body: some View {
        ZStack {
            Color("monBackground1")
//                .ignoresSafeArea()
                .edgesIgnoringSafeArea(.top)
            
            
            VStack {
                Text("POMODORO")
                    .font(Font.custom("SpaceGrotesk-Bold", size: 28))
                    .foregroundColor(Color("bleu1"))

                
                ZStack {
                        Circle()
                            .foregroundColor(Color("bleu2"))
                            .frame(width: 300.0, height: 295.0)
                    VStack {
                        Group{
                            Text("Temps")
                            Text("de travail")}
                            .font(Font.custom("SpaceGrotesk-Bold", size: 33))
                            .foregroundColor(.white)
                        
                        Text("\(timerTravail, specifier: "%.2f")")
                            .onReceive(timer) { time in
                                switch timerStartTravail {
                                case  timerTravail < 25.61 && timerTravail < 26 : timerTravail -= 0.41
                                case timerTravail <= 25 && timerTravail <= 25.59 : timerTravail -= 0.01
                                case  timerTravail < 24.61 && timerTravail < 25 : timerTravail -= 0.41
                                case timerTravail <= 24 && timerTravail <= 24.59 : timerTravail -= 0.01
                                case  timerTravail < 23.61 && timerTravail < 24 : timerTravail -= 0.41
                                case timerTravail <= 23 && timerTravail <= 23.59 : timerTravail -= 0.01
                                case  timerTravail < 22.61 && timerTravail < 23 : timerTravail -= 0.41
                                case timerTravail <= 22 && timerTravail <= 22.59 : timerTravail -= 0.01
                                case  timerTravail < 21.61 && timerTravail < 22 : timerTravail -= 0.41
                                case timerTravail <= 21 && timerTravail <= 21.59 : timerTravail -= 0.01
                                case  timerTravail < 20.61 && timerTravail < 21 : timerTravail -= 0.41
                                case timerTravail <= 20 && timerTravail <= 20.59 : timerTravail -= 0.01
                                case  timerTravail < 19.61 && timerTravail < 20 : timerTravail -= 0.41
                                case timerTravail <= 19 && timerTravail <= 19.59 : timerTravail -= 0.01
                                case  timerTravail < 18.61 && timerTravail < 19 : timerTravail -= 0.41
                                case timerTravail <= 18 && timerTravail <= 18.59 : timerTravail -= 0.01
                                case  timerTravail < 17.61 && timerTravail < 18 : timerTravail -= 0.41
                                case timerTravail <= 17 && timerTravail <= 17.59 : timerTravail -= 0.01
                                case  timerTravail < 16.61 && timerTravail < 17 : timerTravail -= 0.41
                                case timerTravail <= 16 && timerTravail <= 16.59 : timerTravail -= 0.01
                                case  timerTravail < 15.61 && timerTravail < 16 : timerTravail -= 0.41
                                case timerTravail <= 15 && timerTravail <= 15.59 : timerTravail -= 0.01
                                case  timerTravail < 14.61 && timerTravail < 15 : timerTravail -= 0.41
                                case timerTravail <= 14 && timerTravail <= 14.59 : timerTravail -= 0.01
                                case  timerTravail < 13.61 && timerTravail < 14 : timerTravail -= 0.41
                                case timerTravail <= 13 && timerTravail <= 13.59 : timerTravail -= 0.01
                                case  timerTravail < 12.61 && timerTravail < 13 : timerTravail -= 0.41
                                case timerTravail <= 12 && timerTravail <= 12.59 : timerTravail -= 0.01
                                case  timerTravail < 11.61 && timerTravail < 12 : timerTravail -= 0.41
                                case timerTravail <= 11 && timerTravail <= 11.59 : timerTravail -= 0.01
                                case  timerTravail < 10.61 && timerTravail < 11 : timerTravail -= 0.41
                                case timerTravail <= 10 && timerTravail <= 10.59 : timerTravail -= 0.01
                                case  timerTravail < 9.61 && timerTravail < 10 : timerTravail -= 0.41
                                case timerTravail <= 9 && timerTravail <= 9.59 : timerTravail -= 0.01
                                case  timerTravail < 8.61 && timerTravail < 9 : timerTravail -= 0.41
                                case timerTravail <= 8 && timerTravail <= 8.59 : timerTravail -= 0.01
                                case  timerTravail < 7.61 && timerTravail < 8 : timerTravail -= 0.41
                                case timerTravail <= 7 && timerTravail <= 7.59 : timerTravail -= 0.01
                                case  timerTravail < 6.61 && timerTravail < 7 : timerTravail -= 0.41
                                case timerTravail <= 6 && timerTravail <= 6.59 : timerTravail -= 0.01
                                case  timerTravail < 5.61 && timerTravail < 6 : timerTravail -= 0.41
                                case timerTravail <= 5 && timerTravail <= 5.59 : timerTravail -= 0.01
                                case  timerTravail < 4.61 && timerTravail < 5 : timerTravail -= 0.41
                                case timerTravail <= 4 && timerTravail <= 4.59 : timerTravail -= 0.01
                                case  timerTravail < 3.61 && timerTravail < 4 : timerTravail -= 0.41
                                case timerTravail <= 3 && timerTravail <= 3.59 : timerTravail -= 0.01
                                case  timerTravail < 2.61 && timerTravail < 3 : timerTravail -= 0.41
                                case timerTravail <= 2 && timerTravail <= 2.59 : timerTravail -= 0.01
                                case  timerTravail < 1.61 && timerTravail < 2 : timerTravail -= 0.41
                                case timerTravail <= 1 && timerTravail <= 1.59 : timerTravail -= 0.01
                                case  timerTravail < 0.61 && timerTravail < 1 : timerTravail -= 0.41
                                case timerTravail <= 0.01 && timerTravail <= 0.59 : timerTravail -= 0.01
                                default : reset()
                                }
                            }
                            .font(Font.custom("SpaceGrotesk-Medium", size: 33))
                            .foregroundColor(.white)
                        HStack {
                            Button {
                                pause()
                            } label: {
                                Image(systemName: "pause.circle.fill")
                            }
                            .foregroundColor(Color("monBackground1"))
                            .font(.system (size : 50))
                            Button {
                                start()
                            } label: {
                                Image(systemName: "play.circle.fill")
                            }
                            .foregroundColor(Color("monBackground1"))
                            .font(.system (size : 50))
                            
                            Button {
                                reset()
                                
                            } label: {
                                Image(systemName: "arrow.clockwise.circle.fill")
                            }
                            .foregroundColor(Color("monBackground1"))
                            .font(.system (size : 50))
                            
                        }}}
                ZStack {
            Circle()
                .foregroundColor(Color("bleu2"))
                .frame(width: 230.0, height: 245.0)
                    VStack {
                        Group {
                            Text("Temps")
                            Text("de pause")}
                            .font(Font.custom("SpaceGrotesk-Bold", size: 30))
                            .foregroundColor(.white)
                Text("\(timerPause, specifier: "%.2f")")
                    .onReceive(timerp) { time in
                        switch timerStartPause {
                        case  timerPause < 5.61 && timerPause < 6 : timerPause -= 0.41
                        case timerPause <= 5 && timerPause <= 5.59 : timerPause -= 0.01
                        case  timerPause < 4.61 && timerPause < 5 : timerPause -= 0.41
                        case timerPause <= 4 && timerPause <= 4.59 : timerPause -= 0.01
                        case  timerPause < 3.61 && timerPause < 4 : timerPause -= 0.41
                        case timerPause <= 3 && timerPause <= 3.59 : timerPause -= 0.01
                        case  timerPause < 2.61 && timerPause < 3 : timerPause -= 0.41
                        case timerPause <= 2 && timerPause <= 2.59 : timerPause -= 0.01
                        case  timerPause < 1.61 && timerPause < 2 : timerPause -= 0.41
                        case timerPause <= 1 && timerPause <= 1.59 : timerPause -= 0.01
                        case  timerPause < 0.61 && timerPause < 1 : timerPause -= 0.41
                        case timerPause <= 0.01 && timerPause <= 0.59 : timerPause -= 0.01
                        default : resetPause()
                        }
                    }
                    .font(Font.custom("SpaceGrotesk-Medium", size: 30))
                    .foregroundColor(.white)
                        HStack {
                            Button {
                                pausePause()
                            } label: {
                                Image(systemName: "pause.circle.fill")
                            }
                            .foregroundColor(Color("monBackground1"))
                            .font(.system (size : 44))
                            Button {
                                startPause()
                            } label: {
                                Image(systemName: "play.circle.fill")
                            }
                            .foregroundColor(Color("monBackground1"))
                            .font(.system (size : 44))
                            
                            Button {
                                resetPause()
                                
                            } label: {
                                Image(systemName: "arrow.clockwise.circle.fill")
                            }
                            .foregroundColor(Color("monBackground1"))
                            .font(.system (size : 44))
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct EcranTimer_Previews: PreviewProvider {
    
    static var previews: some View {
        EcranTimer()
        
    }
}
