//
//  ContentView.swift
//  Movie_List_App
//
//  Created by Adil Aman Mohammed on 5/31/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataServices()
    
    var body: some View {
        
        ZStack{
            Color(.black).ignoresSafeArea()
            List(menuItems){item in
                //            Text(item.MovieName)
                
                VStack{
                    Image(item.ImageName).resizable()
                        .aspectRatio(contentMode: .fill)
                        .padding(.bottom,-20)
                    
                    Text(item.MovieName).foregroundStyle(Color.white)
                        .font(.custom("Zapfino", size: 15))
                        .opacity(5.0)
                        .padding()
                    
                }
                    .listRowBackground(Color.clear)
                
                
            }.listStyle(.plain)
            .onAppear{
                    menuItems = dataService.getData()
                }
            
            
        }
        
    }
    
}

#Preview {
    ContentView()
}
