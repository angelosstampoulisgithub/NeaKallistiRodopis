//
//  HomeView.swift
//  NeaKallistiRodopis
//
//  Created by Angelos Staboulis on 12/1/25.
//

import SwiftUI
extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
struct HomeView: View {
    @State var text: String = ""
    @State var finalText: String = "Νέα,Καλλίστη Ροδόπης"
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var position:Int = 0
    var gradient =  LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .top, endPoint: .bottom)
    let startDate = Date()

    var body: some View {
        VStack{
            Image(.main)
                .resizable()
                .frame(width:UIScreen.main.bounds.width,height:1200,alignment: .center)
                .overlay(content: {
                    Text(text).font(.largeTitle).frame(width:950,alignment:.leading)
                        .foregroundStyle(gradient)
                        .position(x:700,y:200)
                        .onReceive(timer) { output in
                            if position < finalText.count {
                                text.append(finalText[position])
                            }
                            position = position + 1
                        }
                    TimelineView(.animation){ content in
                               Image("grflag")
                                    .position(x:710,y:-325)
                                   .frame(width:100,height:50)
                                   .visualEffect { context, geometryProxy in
                                       context.distortionEffect(ShaderLibrary.wave(.float(startDate.timeIntervalSinceNow)), maxSampleOffset: .zero)
                                   }
                    }
                })
            
        }
    }
}

#Preview {
    HomeView()
}
