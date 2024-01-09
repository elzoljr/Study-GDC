//
//  ContentView.swift
//  Estudo-GCD
//
//  Created by Elzo Lourenço Júnior on 09/01/24.
//
import SwiftUI

struct ContentView: View {
    @State private var downloadedImage: UIImage?
    @State private var isLoading = false

    var body: some View {
        VStack {
            if let image = downloadedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .padding()
            } else {
                ProgressView("Downloading...")
                    .padding()
                    .opacity(isLoading ? 1 : 0)
            }

            Button("Download") {
                downloadImage()
            }
            .padding()
        }
    }

    func downloadImage() {
           isLoading = true

           // Usando URLSession para carregar a imagem de forma assíncrona
           if let url = URL(string: "https://cdn.pixabay.com/photo/2023/07/04/10/30/dragon-fly-8105990_960_720.jpg") {
               URLSession.shared.dataTask(with: url) { data, response, error in
                   defer {
                       // Isso será executado mesmo se houver um erro ou a conclusão for bem-sucedida
                       DispatchQueue.main.async {
                           isLoading = false
                       }
                   }

                   if let data = data, let image = UIImage(data: data) {
                       DispatchQueue.main.async {
                           downloadedImage = image
                       }
                   }
                   // Trate erros, se necessário
               }.resume()
           }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
