//
//  multipage2.swift
//  rps801
//
//  Created by Amir on 17/01/2022.
//

import SwiftUI

struct multipage2: View {
        @State var multi3 = false
        @State var mymultichoice: String = ""
         
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
                            self.mymultichoice = "🗿"
                            multi3 = true
                        } label: {
                            EmojiButton(emoji: "🗿")
                                .font(.system(size: 80))

                      }
                        
                        Button{
                            self.mymultichoice = "🧻"
                            multi3 = true
                        } label: {
                            EmojiButton(emoji: "🧻")
                                .font(.system(size: 80))
                      }
                        
                        Button{
                            self.mymultichoice = "✂️"
                            multi3 = true
                        } label: {
                            EmojiButton(emoji: "✂️")
                                .font(.system(size: 80))
                      }
                        
                        
                        
                        
                        NavigationLink(isActive: $multi3){
                            multipage3(multimychoice: self.$mymultichoice)
                        } label: {
                            EmptyView()
                        }
                        
                        
                   }
                        
                        Spacer()
                            .frame(height:100)

                        
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Round #1")
            }
}

        

struct multipage2_Previews: PreviewProvider {
    static var previews: some View {
        multipage2()
    }
}
