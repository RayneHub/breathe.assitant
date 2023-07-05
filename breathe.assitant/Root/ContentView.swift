import SwiftUI

struct ContentView: View
{
    @EnvironmentObject var navigator: NavigationRouter
    
    var body: some View{
        
        
        KeepActiveProgramme()
            .onFirstAppearance
        {
            //print(type(of: self))
            //MARK: comment out this line to skip showtips in simulator
            //UserDefaults.standard.set(true, forKey: "ShowTips")
            
            //let b:String = "\(type(of: self))"
            //print(b)
            //UserDefaults.standard.set(true, forKey: "Guide")
            //UserDefaults.standard.bool(forKey: b)
        }
        
        .onFirstRun()
        {
            Guide()
        }
        .navigationHost(with: "Host", navigationBarHidden: true)
        
        
        //ContentView_R().environmentObject(Navigator.global)
        //KeepActiveProgramme().environmentObject(navigator)
        
        //        Button("NavTest")
        //        {
        //
        //            navigator.push(to: .ALFKeepActive(index: 2)) //0
        //            navigator.KeepActivePage(index:1) //1
        //            navigator.KeepActivePage(index:0)// 3
        //            navigator.KeepActivePage(index:11)
        //            //navigator.KeepActivePage(index:11)
        //            //navigator.KeepActivePage(index:11)
        //            ///navigator.KeepActivePage(index:10)
        //            //navigator.KeepActivePage(index:9)
        //            //navigator.KeepActivePage(index:11)
        //        }.padding(.bottom, 30)
        //
        //        Button("ALF: Keep Active Programme"){
        //
        //            navigator.push(to: .ALFKeepActive(index: 2)) //0
        //            navigator.KeepActivePage(index:1) //1
        //            navigator.KeepActivePage(index:0)// 3
        //            navigator.KeepActivePage(index:11)
        //            //navigator.KeepActivePage(index:11)
        //            //navigator.KeepActivePage(index:11)
        //            ///navigator.KeepActivePage(index:10)
        //            //navigator.KeepActivePage(index:9)
        //            //navigator.KeepActivePage(index:11)
        //        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
            .onFirstAppearance
        {
            //print(type(of: self))
            //MARK: comment out this line to skip showtips in simulator
            //UserDefaults.standard.set(true, forKey: "Guide")
        }
    }
}

