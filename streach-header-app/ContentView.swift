import SwiftUI

struct ContentView: View {
  let deviceWidth = UIScreen.main.bounds.width
  let deviceHeight = UIScreen.main.bounds.height
  
  var body: some View {
    ScrollView{
      //      VStack(spacing: 0){
      GeometryReader{ geo in
        // 縮なし
//        Image("poke_image")
//          .resizable()
//          .aspectRatio(contentMode: .fill)
//          .offset(y: -geo.frame(in: .global).minY)
//          .frame(
//            width: self.deviceWidth,
//            height: geo.frame(in: .global).minY > 0 ? geo.frame(in: .global).minY + 300 : 300
//        )
        
        //　縮あり
        Image("poke_image")
          .resizable()
          .aspectRatio(contentMode: .fill)
          .offset(y: -geo.frame(in: .global).minY)
          .frame(
            width: self.deviceWidth,
            height: geo.frame(in: .global).minY + 300
        )
      }.frame(height: 300)
      
      VStack(spacing: 0){
        Text("はじめまして。")
          .font(.system(size: 35, weight: .heavy, design: .rounded))
          .padding()
        
        Text("SwiftUIを使っていろいろ作ってます。今はUIを強化して、その後それを生かして素敵なアプリを作っていきます。")
          .font(.system(size: 15, weight: .medium, design: .rounded))
          .fixedSize(horizontal: false, vertical: true)
          .lineLimit(nil)
          .frame(width: UIScreen.main.bounds.width / 1.3)
          .padding(.bottom)
        
        Text("つくったもの。")
          .font(.system(size: 35, weight: .heavy, design: .rounded))
          .padding(.bottom)
        
        madeCell()
          .padding(.bottom)
        madeCell()
          .padding(.bottom)
        madeCell()
          .padding(.bottom)
        
        HStack {
          Button(action: {}){
            Text("cencel")
              .frame(width: 70, height: 30)
              .padding()
              .cornerRadius(10)
              .foregroundColor(.white)
              .background(Color.blue)
          }
          
          Button(action: {}){
            Text("OK")
              .frame(width: 70, height: 30)
              .padding()
              .cornerRadius(10)
              .foregroundColor(.white)
              .background(Color.red)
          }
        }
      }
      .frame(width: UIScreen.main.bounds.width)
      .padding(.top, 25)
      .background(Color.black)
      .cornerRadius(20)
      .offset(y: -35)
    }
    .edgesIgnoringSafeArea(.all)
    .background(Color.black.edgesIgnoringSafeArea(.all))
  }
  
}

struct madeCell: View {
  var body: some View {
    HStack(spacing: 20) {
      Image("pika")
        .resizable()
        .frame(width: 100, height: 100)
        .cornerRadius(10)
      
      VStack(spacing: 0) {
        Text("アルコToDo")
          .font(.system(size: 20, design: .rounded))
          .font(.system(.title))
          .padding(.bottom)
        
        Text("ToDo機能とお酒管理機能のついた、Happy Drinking Life系アプリ")
          .font(.system(size: 13, weight: .medium, design: .rounded))
          .fixedSize(horizontal: false, vertical: true)
          .lineLimit(nil)
      }
    }
    .frame(width: UIScreen.main.bounds.width / 1.3)
    .padding()
    .background(
      
      RoundedRectangle(cornerRadius: 10)
        .stroke(
          LinearGradient(
            gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.orange]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
          )
          , lineWidth: 3
      )
    )
  }
}
