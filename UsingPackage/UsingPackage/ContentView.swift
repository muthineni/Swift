//
//  ContentView.swift
//  usingPM
//
//  Created by Muthineni, Sridhar on 6/3/25.
//

import SwiftUI
import NetworkManager


struct DeviceResponse: Codable {
    let id, name: String
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let dataColor, dataCapacity: String?
    let capacityGB: Int?
    let dataPrice: Double?
    let dataGeneration: String?
    let year: Int?
    let cpuModel, hardDiskSize, strapColour, caseSize: String?
    let color, description, capacity: String?
    let screenSize: Double?
    let generation, price: String?

    enum CodingKeys: String, CodingKey {
        case dataColor = "color"
        case dataCapacity = "capacity"
        case capacityGB = "capacity GB"
        case dataPrice = "price"
        case dataGeneration = "generation"
        case year
        case cpuModel = "CPU model"
        case hardDiskSize = "Hard disk size"
        case strapColour = "Strap Colour"
        case caseSize = "Case Size"
        case color = "Color"
        case description = "Description"
        case capacity = "Capacity"
        case screenSize = "Screen size"
        case generation = "Generation"
        case price = "Price"
    }
}




struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button(
                "click it",
                action: {
                    NetworkServices().get(endPoint: "https://api.restful-api.dev/objects", withHeaders: nil) { (response: NetworkServiceResponse<[DeviceResponse]>) in
                        if response.status == .success {
//                            guard let deviceName = response.data?.name[0]
//
//                            else { return }
//                            guard let color = response.data?.data?.color else { return }
                            print("####### items", response.data)
                        }
                    }
                })
        }}
}

#Preview {
    ContentView()
}
