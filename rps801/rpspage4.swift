//
//  rpspage4.swift
//  rps801
//
//  Created by Amir on 14/01/2022.
//

import SwiftUI

struct rpspage4: View {
    @State var nextpage = false
    @Binding var mychoice: String
    var body: some View {
        ZStack{
            VStack{
                NavigationLink(isActive: $nextpage){
                    rpspage5pcchoice(pcchoice: "",mychoice: $mychoice)
                } label: {
                    EmptyView()
                }
                
                Text ("Your opponent is thinking")
                    .font(.system(size: 54, weight: .heavy, design: .default))
                    .foregroundColor(.black)
                Spacer()
                    .frame(height:90)
                
                ZStack {
                    Capsule()
                        .foregroundColor(Color("buttoncolor"))
                        .frame(width: 342, height: 128)
                    ProgressView()
                        
                }
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                nextpage = true
            }
        }
    }
}

//struct rpspage4_Previews: PreviewProvider {
//    static var previews: some View {
//        rpspage4()
//    }
//}
