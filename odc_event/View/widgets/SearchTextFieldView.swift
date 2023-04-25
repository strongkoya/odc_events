//
//  SearchTextFieldView.swift
//  odc_event
//
//  Created by Orangeodc3 on 25/4/2023.
//

import SwiftUI

struct SearchTextFieldView: View {
    @State private var searchText = "" // Créez une variable de chaîne pour stocker la valeur du champ de texte
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 75)
                .stroke(Styles.grey, lineWidth: 2)
                .frame(height: 50)
                .overlay {
                    HStack {
                        // Créez une instance de Binding<String> à partir de votre variable de chaîne
                        TextField("Search", text: $searchText)
                            .font(.custom(Fonts.airbnbCereal_book, size: 14))
                            .padding(.leading, 32)
                            .foregroundColor(Styles.blue)
                        Image("search-ic")
                            .frame(width: 24, height: 24)
                            .padding(.trailing, 24)
                    }
                }
        }.padding(.horizontal, 16)
    }
}


struct SearchTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTextFieldView()
    }
}
