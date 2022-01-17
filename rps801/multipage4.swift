//
//  multipage4.swift
//  rps801
//
//  Created by Amir on 17/01/2022.
//

import SwiftUI

struct multipage4: View {
    @State var multinextpage = false
    @Binding var multimychoice: String
    var body: some View {
        ZStack{
            VStack{
                NavigationLink(isActive: $multinextpage){
                    multipage5(multimychoice: $multimychoice)
                } label: {
                    EmptyView()
                }
                
                Text ("Pass the phone to your opponent")
                    .font(.system(size: 54, weight: .heavy, design: .default))
                    .foregroundColor(.black)
                Spacer()
                    .frame(height:90)
                
               
                        
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                multinextpage = true
            }
        }
    }
}
