//
//  TimeZoneView.swift
//  SwiftUI-WatchTime
//
//  Created by qjinliang on 2020/6/17.
//  Copyright © 2020 醉看红尘这场梦. All rights reserved.
//

import SwiftUI

struct TimeZoneView: View {
    
    var timeZone = TimeZone.init("测试","测试", "测试")
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(timeZone.area).font(.system(size: 15, weight: Font.Weight.black))
                Text(timeZone.location).foregroundColor(Color.green)
            }
            Spacer()
            Text(timeZone.utcOffset).font(.system(size: 20, weight: Font.Weight.black))
        }.frame(maxWidth: .infinity)
        .padding(30)
            .background(Color.white)
        .cornerRadius(20)
            .shadow(color: Color.gray.opacity(0.2), radius: 8, x: 0, y: 8)
            .padding(.horizontal)
    }
}

struct TimeZoneView_Previews: PreviewProvider {
    static var previews: some View {
        TimeZoneView()
    }
}
