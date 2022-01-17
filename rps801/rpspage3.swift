//
//  rpspage3.swift
//  rps801
//
//  Created by Amir on 14/01/2022.
//

import SwiftUI

struct rpspage3: View {
    
    @State var chooseagain = false
    @State var nextpage = false
    @Binding var mychoice: String
    
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
                    nextpage = true
                } label: {
                    EmojiButton(emoji: mychoice)
                        .font(.system(size: 80))
                }
                

                
                NavigationLink(isActive: $nextpage){
                    rpspage4(mychoice: $mychoice)
                } label: {
                    EmptyView()
                }
                
                
//                EmojiButton(emoji: mychoice)
//                    .font(.system(size: 80))
                
                NavigationLink(isActive: $chooseagain){
                    rpspage2()
                } label: {
                    EmptyView()
                }
                Spacer()
                
                
                Button{
                    chooseagain = true
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

//NavigationLink(isActive: $secondpage){
//    rpspage2()
//} label: {
//    EmptyView()
//}
////Q zachem navlink + empty view
////raznica s destination: (..)
//
//Button{
//    secondpage = true
//} label : {
//    ZStack {
//        RoundedRectangle(cornerRadius: 9).fill(Color.purple).frame(width: 358, height: 50)
//        Text("Single Player")
//            .foregroundColor(.white)
//}
//}










//struct rpspage3_Previews: PreviewProvider {
//    static var previews: some View {
//        rpspage3(mychoice: "leng")
//    }
//}
