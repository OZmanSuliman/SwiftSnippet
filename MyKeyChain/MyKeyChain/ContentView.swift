//
//  ContentView.swift
//  MyKeyChain
//
//  Created by Osman Solomon on 31/08/2021.
//

import SwiftUI


struct ContentView: View {
    func any(){
        let int: Int = 555
        let data = Data(from: int)
        let status = KeyChain.save(key: "MyNumber", data: data)
        print("status: ", status)
            
        if let receivedData = KeyChain.load(key: "MyNumber") {
            let result = receivedData.to(type: Int.self)
            print("result: ", result)
        }

    }
    init() {
        any()
    }
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



