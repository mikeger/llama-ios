//
//  ContentView.swift
//  llama-ios
//
//  Created by Michael Gerasymenko on 15.03.23.
//

import SwiftUI
import LlamaWrapper

struct ContentView: View {
    var body: some View {
        Text("Available RAM: \(os_proc_available_memory())")
        VStack {
            Button("🦙") {
                runLlama(with: "The first president of the USA was",
                         model: Bundle.main.path(forResource: "ggml-model-q4_0", ofType: "bin")!)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
