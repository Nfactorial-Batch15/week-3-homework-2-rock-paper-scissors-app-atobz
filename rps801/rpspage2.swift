//
//  rpspage2.swift
//  rps801
//
//  Created by Amir on 13/01/2022.
//

import SwiftUI



struct rpspage2: View {
    
    @State var thirdpage = false
    @State var mychoice: String = ""
     
    var body: some View {
        ZStack{
            VStack{
                
                Text ("Take your pick")
                    .font(.system(size: 54, weight: .heavy, design: .default))
                        .foregroundColor(.black)
                Text("Score 0:0")
                    .foregroundColor(.purple)
                Spacer()
                    .frame(height:90)
                VStack(spacing: 24){
                    
                    Button{
                        self.mychoice = "🗿"
                        thirdpage = true
                    } label: {
                        EmojiButton(emoji: "🗿")
                            .font(.system(size: 80))
                        
                        
                        
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 9).fill(Color.purple).frame(width: 358, height: 50)
//                            Text("🗿")
//                                .foregroundColor(.white)
//
                  }
                    
                    Button{
                        self.mychoice = "🧻"
                        thirdpage = true
                    } label: {
                        EmojiButton(emoji: "🧻")
                            .font(.system(size: 80))
                  }
                    
                    Button{
                        self.mychoice = "✂️"
                        thirdpage = true
                    } label: {
                        EmojiButton(emoji: "✂️")
                            .font(.system(size: 80))
                  }
                    
                    
                    
                    
                    NavigationLink(isActive: $thirdpage){
                        rpspage3(mychoice: self.$mychoice)
                    } label: {
                        EmptyView()
                    }
                    
                    
//                    NavigationLink(destination: rpspage3(choice: "🗿")){
//                        EmojiButton(emoji: "🗿")
//                            .font(.system(size: 80))
//                    }
//
//                    NavigationLink(destination: rpspage3(choice: "🧻")){
//                        EmojiButton(emoji: "🧻")
//                            .font(.system(size: 80))
//                    }
//
//                    NavigationLink(destination: rpspage3(choice: "✂️")){
//                        EmojiButton(emoji: "✂️")
//                            .font(.system(size: 80))
//                    }
                    
                        
                        
                        
                        
//                    NavigationLink(isActive: $thirdpage){
//                        rpspage3(choice: self.$mychoice)
//                    } label: {
//                        EmptyView()
//                    }
                    
//                    //Q zachem navlink + empty view
//                    //raznica s destination: (..)
//
//                    Button{
//                        secondpage = true
                    
//                    } label : {
//                        ZStack {
//                            RoundedRectangle(cornerRadius: 9).fill(Color.purple).frame(width: 358, height: 50)
//                            Text("Single Player")
//                                .foregroundColor(.white)
//                    }
               }
                    
                    Spacer()
                        .frame(height:100)

                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Round #1")
        }
    
    }
    

//}


struct EmojiButton: View {
    let emoji: String

    var body: some View {
        ZStack {
            Capsule()
                .foregroundColor(Color("buttoncolor"))
                .frame(width: 342, height: 128)
            Text(emoji)
        }
    }
}


struct rpspage2_Previews: PreviewProvider {
    static var previews: some View {
        rpspage2()
    }
}




