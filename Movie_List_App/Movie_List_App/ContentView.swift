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
        
        
            
            List(menuItems){item in
                //            Text(item.MovieName)
                
                Image(item.ImageName).resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(1.0)
                    .frame(width: 920,height: 550)
                
                HStack{
                    Spacer()
                    Text(item.MovieName).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).multilineTextAlignment(.leading)
                    Spacer()
                }
                
            }.background(Color.black)
            .onAppear{
                menuItems = dataService.getData()
            }
            
            
            
        
        
    }
    
}

#Preview {
    ContentView()
}
