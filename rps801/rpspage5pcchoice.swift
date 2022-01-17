//
//  rpspage5pcchoice.swift
//  rps801
//
//  Created by Amir on 17/01/2022.
//


import SwiftUI

struct rpspage5pcchoice: View {
    @State var pcchoice: String
    @State var lastpage = false
 //   @Binding var mychoice: String
    @Binding var mychoice: String


    
    var body: some View {
        
            VStack{
            
            Text ("Your opponent's pick")
                .font(.system(size: 54, weight: .heavy, design: .default))
                .foregroundColor(.black)
            Spacer()
                .frame(height:90)
            
            NavigationLink(isActive: $lastpage ){
                rpspage6battle(mychoice: self.$mychoice, pcchoice: self.$pcchoice)
            } label: {
                EmptyView()
            }
            
            
            
            ZStack{
                Capsule()
                    .foregroundColor(Color("buttoncolor"))
                    .frame(width: 342, height: 128)
                Text(computerchoice(randompick: pcchoice))
                    .font(.system(size: 80))
                
                
            }
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 5){
                lastpage = true
    }
}
    }
}

    


    



func computerchoice( randompick: String) -> String {
    
    if (Int.random(in: 1..<4) == 1){
        
        var randompick = "🗿"
        return randompick
    }
    else if (Int.random(in: 1..<4) == 2){
        var randompick = "🧻"
        return randompick
    }
    else {
        var randompick = "✂️"
        return randompick
    }
}

        


    
    
    


//struct rpspage5pcchoice_Previews: PreviewProvider {
//    static var previews: some View {
//        rpspage5pcchoice()
//    }
//}
