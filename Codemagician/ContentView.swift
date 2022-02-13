//
//  ContentView.swift
//  Codemagician
//
//  Created by Rudrank Riyam on 04/02/22.
//

import SwiftUI

struct ContentView: View {
  private let url = URL(string: "https://blog.codemagic.io/uploads/covers/codemagic-blog-header-ios-publishing.png")

  var body: some View {
    NavigationView {
      Group {
        if let url = url {
          AsyncImage(url: url) { phase in
            switch phase {
              case .success(let image):
                image
                  .resizable()
                  .scaledToFill()

              case .empty:
                ProgressView()

              case .failure(let error):
                Text(error.localizedDescription)

              @unknown default:
                fatalError()
            }
          }
        } else {
          Text("Wrong URL")
        }
      }
      .navigationTitle("Codemagician")
    }
    .navigationViewStyle(.stack)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
