//
//  rpspage6battle.swift
//  rps801
//
//  Created by Amir on 17/01/2022.
//

import SwiftUI

struct rpspage6battle: View {
    @Binding var mychoice: String
    @Binding var pcchoice: String

    
    var body: some View {
//        Text(mychoice)
//        Text(pcchoice)
        Text("hi")
        Text("MY choice is \(mychoice)")
        Text(pcchoice)
    }
}

//struct rpspage6battle_Previews: PreviewProvider {
//    static var previews: some View {
//       rpspage6battle()
//    }
//}




func compare(mychoice: String, pcchoice: String) -> String{
    if  (mychoice == pcchoice){
        return ("It's a Draw")
    }


    else if (mychoice == "🗿" && pcchoice == "✂️") || (mychoice == "✂️" && pcchoice == "🧻") || (mychoice == "🧻" && pcchoice == "🗿"){
        return ("You Win")
 
    }


    else {
        return ("You Loose")
    }
}

