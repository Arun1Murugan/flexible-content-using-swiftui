//
//  WordContentView.swift
//  FlexibleContent
//
//  Created by Arun Skyraan on 03/03/23.
//

import SwiftUI

struct WordContentView: View {
    
    @State var animalName: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 0) {
            
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .font(Font.title2)
                        .foregroundColor(Color.black.opacity(0.7))
                    Text("Back")
                        .font(Font.custom("Hind-Regular", size: 18))
                        .foregroundColor(Color.black.opacity(0.7))

                })
                Spacer()
            }
            .padding()
            .background(Color.clear.ignoresSafeArea(.all))
            Divider()
            
            Spacer()
            Text("\(animalName)")
                .font(Font.custom("Hind-Regular", size: 20))

            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct WordContentView_Previews: PreviewProvider {
    static var previews: some View {
        WordContentView(animalName: "Test")
    }
}
