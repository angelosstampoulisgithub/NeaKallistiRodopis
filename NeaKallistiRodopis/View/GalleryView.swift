//
//  GalleryView.swift
//  NeaKallistiRodopis
//
//  Created by Angelos Staboulis on 12/1/25.
//

import SwiftUI

struct GalleryView: View {
    let images = ["nea1", "nea2", "nea3","nea4","nea5","nea6","nea7"]
    @State var index:Int
    var body: some View {
        VStack {
            Image(images[index])
                .resizable()
                .frame(width:UIScreen.main.bounds.width,height:1200,alignment: .center)
                .overlay {
                    ZStack{
                        VStack{
                            Button {
                                if index < 6{
                                    index = index + 1
                                }else{
                                    index = 0
                                }
                            } label: {
                                Text("Επόμενη Φωτογραφία")
                            }
                        }.frame(maxWidth: .infinity,maxHeight:950,alignment: .bottom)
                    }
                }

            
        }
        
    }
}


