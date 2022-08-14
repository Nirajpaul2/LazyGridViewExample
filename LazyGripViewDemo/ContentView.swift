//
//  ContentView.swift
//  LazyGripViewDemo
//
//  Created by Purplle on 12/08/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Property
    
    private var images = ["almond", "cantu", "chanel", "loveKitian", "park-avenue", "pinklipstick", "products-flattened", "redken", "skylay", "TheManeChoice"]
     
    private var colors: [Color] = [.orange, .orange, .gray, .white, .black, .pink, .red, .orange, .gray , .green]
     
    //MARK: - Arrang the layout according to need
   
   // private var gridItemLayout: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    //MARK: - Arrang the layout according to need
   
    //private var gridItemLayout: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    //MARK: - adaptive: Means fill as many images as possible in a row such that each item has a minimum size of 90 points.
    //private var gridItemLayout: [GridItem] = [GridItem(.adaptive(minimum: 90))]
    
    //MARK: - Fixed the sizes
  //  private var gridItemLayout: [GridItem] = [GridItem(.fixed(100)), GridItem(.fixed(150))]

    //MARK: - fixed and adaptive size
   private var gridItemLayout: [GridItem] = [GridItem(.fixed(150)),GridItem(.adaptive(minimum: 50))]
    
        
    //MARK: - Body
    var body: some View {
        ScrollView {
            LazyVGrid(columns: gridItemLayout, spacing: 5) {
                ForEach(0..<images.count, id: \.self) { item in
                    Image(images[item])
                        .resizable()
                        .scaledToFit()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40)
                        .background(colors[item])
                        .cornerRadius(20)
                        
                }
            }
        }
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
