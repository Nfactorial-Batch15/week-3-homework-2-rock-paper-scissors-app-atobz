//
//  multipage5.swift
//  rps801
//
//  Created by Amir on 17/01/2022.
//

import SwiftUI

struct multipage5: View {
    @State var multi6 = false
    @State var multichoiceopponent: String = ""
    @Binding var multimychoice: String
     
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
                        self.multichoiceopponent = "🗿"
                        multi6 = true
                    } label: {
                        EmojiButton(emoji: "🗿")
                            .font(.system(size: 80))

                  }
                    
                    Button{
                        self.multichoiceopponent = "🧻"
                        multi6 = true
                    } label: {
                        EmojiButton(emoji: "🧻")
                            .font(.system(size: 80))
                  }
                    
                    Button{
                        self.multichoiceopponent = "✂️"
                        multi6 = true
                    } label: {
                        EmojiButton(emoji: "✂️")
                            .font(.system(size: 80))
                  }
                    
                    
                    
                    
                    NavigationLink(isActive: $multi6){
                        multipage6(multimychoice: $multimychoice, multichoiceopponent: self.$multichoiceopponent)
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
