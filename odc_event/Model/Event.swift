//
//  Event.swift
//  event-workshop-swiftui
//
//  Created by ODC on 25/4/2023.
//

import Foundation


struct Event: Identifiable
{
    let id: UUID
    
    
    let date:String
    let image:String
    let title:String
    let location:String
    let performers : [Performer]
    init(date: String, image: String, title:String, location: String, performers: [Performer]) {
            self.id = UUID()
            
            self.date = date
        self.image = image
        self.title = title
            self.location = location
        self.performers = performers
        }
}


