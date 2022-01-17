//
//  multipage3.swift
//  rps801
//
//  Created by Amir on 17/01/2022.
//

import SwiftUI

struct multipage3: View {
    @State var multichooseagain = false
    @State var page4 = false
    @Binding var multimychoice: String
    
    //var choice: String
    var body: some View {
        //NavigationView{
        ZStack{
            VStack{
                
                Text ("Your Pick")
                    .font(.system(size: 54, weight: .heavy, design: .default))
                    .foregroundColor(.black)
                Text("Score 0:0")
                    .foregroundColor(.purple)
                Spacer()
                    .frame(height:90)
//                EmojiButton(emoji: mychoice)
//                    .font(.system(size: 80))
                
                
                Button{
                    page4 = true
                } label: {
                    EmojiButton(emoji: multimychoice)
                        .font(.system(size: 80))
                }
                

                
                NavigationLink(isActive: $page4){
                    multipage4(multimychoice: $multimychoice)
                } label: {
                    EmptyView()
                }
                
                
//                EmojiButton(emoji: mychoice)
//                    .font(.system(size: 80))
                
                NavigationLink(isActive: $multichooseagain){
                    multipage2()
                } label: {
                    EmptyView()
                }
                Spacer()
                
                
                Button{
                    multichooseagain = true
                } label : {
                    ZStack {
                        RoundedRectangle(cornerRadius: 9).fill(Color.purple).frame(width: 358, height: 50)
                        Text("I changed my mind")
                            .foregroundColor(.white)
                }
            }
                
                
            }
        }
   // }
}
}

//struct multipage3_Previews: PreviewProvider {
//    static var previews: some View {
//        multipage3()
//    }
//}
