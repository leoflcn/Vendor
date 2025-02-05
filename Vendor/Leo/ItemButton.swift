//
//  ItemButton.swift
//  Vendor
//
//  Created by leo on 4/15/21.
//

import SwiftUI

struct ItemButton: View {
    
    var item : Item
    var animation : Namespace.ID
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6) {
            
            ZStack{
                
                // both image and color name are same....
                Color(.white)
                    .cornerRadius(15)
                
                Image(item.name)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .matchedGeometryEffect(id: item.name, in: animation)
            }
            
            Text(item.name)
                .fontWeight(.heavy)
                .foregroundColor(.gray)
            
            Text("$" + String(format: "%.2f", item.price))
                .fontWeight(.heavy)
                .foregroundColor(Color("UseBlack"))
        }
    }
}
