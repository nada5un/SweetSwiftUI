//
//  ProductRow.swift
//  FruitMart
//
//  Created by daeun on 2022/10/13.
//  Copyright © 2022 Giftbot. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    var body: some View {
        HStack {
            Image("apple")
                .resizable()
                .scaledToFill()
                .frame(width: 140)
                .clipped()
            
            VStack(alignment: .leading){
                Text("백설공주 사과")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .padding(.bottom,6)
                
                Text("달콤한 맛이 좋은 과일의 여왕 사과. 독은 없고 꿀만 가득해요!")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                HStack (spacing: 0) {
                    Text("￦").font(.footnote)
                    + Text("2100").font(.headline)
                    
                    Spacer()
                    
                    Image(systemName: "heart")
                        .imageScale(.large).foregroundColor(Color("peach"))
                        .frame(width: 32, height: 32)
                    
                    Image(systemName: "cart").imageScale(.medium).foregroundColor(Color("peach"))
                        .frame(width: 32, height: 32)
                }
            }
            .padding([.leading, .bottom],12)
            .padding([.top, .trailing])
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert())
        .cornerRadius(6)
        .shadow(color: Color.primary.opacity(0.33), radius: 1,x: 2,y: 2)
        .padding(.vertical, 8)
    }
}


struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow()
    }
}
