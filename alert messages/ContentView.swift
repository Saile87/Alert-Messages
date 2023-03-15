//
//  ContentView.swift
//  alert messages
//
//  Created by Elias Breitenbach on 07.02.23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) { }
            Button("Cancel", role: .cancel) { }
        } message: {
            Text("Pleas read this")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
