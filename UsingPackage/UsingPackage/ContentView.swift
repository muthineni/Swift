//
//  ContentView.swift
//  UsingPackage
//
//  Created by Muthineni, Sridhar on 9/29/21.
//

import SwiftUI
import FirstPackage

struct ContentView: View {
    
    var body: some View {
        Text(FirstPackage().sayPackageHello())
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
