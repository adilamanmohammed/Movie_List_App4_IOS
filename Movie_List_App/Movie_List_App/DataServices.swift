//
//  DataServices.swift
//  Movie_List_App
//
//  Created by Adil Aman Mohammed on 5/31/24.
//

import Foundation

struct DataServices{
    func getData() -> [MenuItem]{
        return [MenuItem(MovieName: "Mission Impossible", ImageName: "missionimpossible"),
                MenuItem(MovieName: "Captain America", ImageName: "captainamerica"),
                MenuItem(MovieName: "Dune", ImageName: "dune"),
                MenuItem(MovieName: "Home Alone", ImageName: "homealone"),
                MenuItem(MovieName: "Mariobros", ImageName: "mariobros")]
    }
}
