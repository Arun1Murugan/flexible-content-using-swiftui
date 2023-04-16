//
//  ContentView.swift
//  FlexibleContent
//
//  Created by Arun Skyraan on 03/03/23.
//

import SwiftUI

struct ContentView: View {
    
    let animals = ["Lion", "Tiger", "Bear", "Elephant", "Giraffe", "Gorilla", "Zebra", "Kangaroo", "Dolphin", "Whale", "Shark", "Penguin", "Koala", "Chimpanzee", "Crocodile", "Alligator", "Hippopotamus", "Rhinoceros", "Camel", "Sloth"]

    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                
                Text("Flexible content")
                    .font(Font.custom("Hind-Regular", size: 20))

                Spacer()
            }
            .padding()
            .background(Color.clear.ignoresSafeArea(.all))
            Divider()
            
            ScrollView {
                FlexibleView(data: animals, spacing: 0, alignment: .leading) { item in
                    NavigationLink(destination: {
                        WordContentView(animalName: item)
                    }, label: {
                    Text(item)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(Font.custom("Hind-Regular", size: 15))
                        .padding(10)
                        .foregroundColor(Color.black.opacity(0.8))
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.black.opacity(0.6), lineWidth: 1)
                        )
                        .padding(10)
                    })
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
