//
//  ContentView.swift
//  Hacker News
//
//  Created by Felipe Vallejo on 9/5/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                Text("hello")
            }
            .navigationBarTitle("Hacker News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
