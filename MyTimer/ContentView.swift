//
//  ContentView.swift
//  MyTimer
//
//  Created by 阿部洸也 on 2023/04/22.
//

import SwiftUI

struct ContentView: View {
    
    //タイムの変数を作成
    @State var timeHandler : Timer?
    
    //経過時間の変数を作成
    @State var count = 0
    
    //永続化する秒数設定
    @AppStorage("time_value") var timeValue = 10
    
    var body: some View {
        
        NavigationStack{
            //
            ZStack{
                Image("backgroundTimer")
                //
                    .resizable()
                    .ignoresSafeArea()
                    .scaledToFill()
                VStack{
                    Text("残り10秒")
                        .font(.largeTitle)
                    HStack{
                        Button{
                            
                        } label: {
                            Text("スタート")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color("startColor"))
                            //円形に切り抜く
                                .clipShape(Circle())
                        }
                        
                        Button{
                            
                        } label: {
                            Text("ストップ")
                                .font(.title)
                                .foregroundColor(Color.white)
                                .frame(width: 140, height: 140)
                                .background(Color("stopColor"))
                            //円形に切り抜く
                                .clipShape(Circle())
                        }
                        
                    }//hstack
                }//vstack
            }//zstack
            //ボタン追加
            .toolbar{
                //右にボタン
                ToolbarItem(placement: .navigationBarTrailing){
                    //ナビゲーション遷移
                    NavigationLink{
                        SettingView()
                    } label: {
                        //テキスト表示
                        
                        Text("秒数設定")
                    }//ナビゲーションリンクここまで
                }//ツールバーアイテムここまで
            }//ツールバーここまで
        }//ナビゲーションスタックここまで
    }//ボディここまで
    
    func countDownTimer() {
        
        count += 1
        if timeValue - count <= 0{
            //タイマー停止
            timeHandler?.invalidate()
        }
        
    }//カウンドダウンタイマー
    func startTimer() {
        if let unwrapedTimerHandler = timeHandler {
            //タイマーが実行だったらスタートしない
            if unwrapedTimerHandler.isValid == true {
                return
            }
        }
        
        if timerValue - count <= 0 {
            count = 0
        }
        
        timerHandler = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            
            countDownTimer()
        }
    }//スタートタイマー
}//コンテンツビューここまで

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
