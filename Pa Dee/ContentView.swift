//
//  ContentView.swift
//  Pa Dee
//
//  Created by Zin Lin Phyo on 8/3/20.
//  Copyright © 2020 Zin Lin Phyo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var ဘုရားဂုဏ္ေတာ္ = [
        "အရဟံ", "သမ္မာသမ္ဗုဒ္ဓေါ", "ဝိဇ္ဇာစရဏ သမ္ပန္နော", "သုဂတော", "လောကဝိဒူ", "အနုတ္တရော ပုရိသဓမ္မသာရထိ", "သတ္ထာဒေဝ မနုဿာနံ", "ဗုဒ္ဓေါ", "ဘဂဝါ"
    ]
    
    @State var အလုံးေရ = 0
    @State var အပတ္ေရ = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text(ဘုရားဂုဏ္ေတာ္[အပတ္ေရ])
                .font(.system(size: 24))
                .fontWeight(.medium).padding(.bottom, 32.0)
            Text(String(self.အလုံးေရ))
                .font(.system(size: 32))
            Button(action: {
                let impactMed = UIImpactFeedbackGenerator(style: .light)
                impactMed.impactOccurred()
                if (self.အလုံးေရ < 108) {
                    self.အလုံးေရ = self.အလုံးေရ + 1
                } else {
                    if (self.အပတ္ေရ < 9) {
                        self.အပတ္ေရ = self.အပတ္ေရ + 1
                        self.အလုံးေရ = 0
                    }
                }
            }) {
                Text("Count")
            }
            .padding(.top, 24.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
