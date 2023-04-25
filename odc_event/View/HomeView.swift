//
//  HomeView.swift
//  odc_event
//
//  Created by Orangeodc3 on 25/4/2023.
//

import SwiftUI

struct HomeView: View {
    let events: [Event] = [Event(date: "Sat, May 1 •2:00 PM", image: "event-img", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: []),Event(date: "Sat, May 1 •2:00 PM", image: "event-img", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: []),Event(date: "Sat, May 1 •2:00 PM", image: "event-img", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: []),Event(date: "Sat, May 1 •2:00 PM", image: "event-img", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: [])]
    var body: some View {
        VStack(spacing: 20){
            SearchTextFieldView()
            HStack {
                Text("Upcoming events")
                    .font(.headline)
                    .foregroundColor(.primary)
                Spacer()
                Button(action: {
                    // Action
                }) {
                    Text("See All")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }.padding(.horizontal, 16)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(events) { event in
                        EventHItemView(event: event)
                            .frame(width: 200, height: 250)
                    }
                }
            }
        
                HStack {
                                Text("NearBy events")
                                    .font(.headline)
                                    .foregroundColor(.primary)
                                Spacer()
                                Button(action: {
                                    // Action
                                }) {
                                    Text("See All")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                            }.padding(.horizontal, 16)
                ScrollView(.horizontal) {
                            HStack {
                                ForEach(events) { event in
                                    EventHItemView(event: event)
                                        .frame(width: 200, height: 250)
                                }
                            }
                        }
          //  EventVItemView(event: Event(date: "Sat, May 1 •2:00 PM", image: "event-img", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: []))
          //  EventHItemView(event:  Event(date: "Sat, May 1 •2:00 PM", image: "event-img", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: [Performer(image: "Image"),Performer(image: "event-img"),Performer(image: "Image"),Performer(image: "event-img"),Performer(image: "Image"),Performer(image: "event-img")]))
            // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
       // let events0: [Event] = [Event(date: "Sat, May 1 •2:00 PM", image: "event-img", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: []),Event(date: "Sat, May 1 •2:00 PM", image: "event-img", title: "A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz A Virtual Evening of Smooth Jazz", location: "Lot 13 • Oakland, CA", performers: [])]
        HomeView()
    }
}
