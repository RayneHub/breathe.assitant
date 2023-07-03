import SwiftUI

struct ContentView: View {
    @StateObject var navigator: NavigationRouter = NavigationRouter()
    
    var body: some View{
        KeepActiveProgramme().navigationHost(with: "Host", navigationBarHidden: true)
        
        //ContentView_R().environmentObject(Navigator.global)
        //KeepActiveProgramme().environmentObject(navigator)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home:View {
    @EnvironmentObject var navigator: NavigationRouter
    var body: some View {
       
        Button("NavTest"){
            
            navigator.push(to: .ALFKeepActive(index: 2)) //0
            navigator.KeepActivePage(index:1) //1
            navigator.KeepActivePage(index:0)// 3
            
            navigator.KeepActivePage(index:11)
            //navigator.KeepActivePage(index:11)
            //navigator.KeepActivePage(index:11)
            ///navigator.KeepActivePage(index:10)
            //navigator.KeepActivePage(index:9)
            //navigator.KeepActivePage(index:11)
        }
    }
}


struct Previews_EntryPoint_Previews: PreviewProvider {
    static var previews: some View {
        Home().navigationHost(with: "Host", navigationBarHidden: true)
    }
}


