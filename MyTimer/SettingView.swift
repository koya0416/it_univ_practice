//
//  SettingView.swift
//  MyTimer
//
//  Created by 阿部洸也 on 2023/04/22.
//

import SwiftUI

struct SettingView: View {
    
    @State var timeValue = 10
    
    var body: some View {
        ZStack{
            
            Color("backgroungSetting")
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                
                Text("\(timeValue)秒")
                    .font(.largeTitle)
                
                Spacer()
                
                Picker(selection: $timeValue) {
                    
                    Text("10")
                        .tag("10")
                    
                    Text("20")
                        .tag("20")
                    
                    Text("30")
                        .tag("30")
                    
                    Text("40")
                        .tag("40")
                    
                    Text("50")
                        .tag("50")
                    
                    Text("60")
                        .tag("60")
                } label: {
                    Text("選択")
                }
                
                .pickerStyle(.wheel)
                
            }//vstack
            
        }//zstack
    }//body
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
