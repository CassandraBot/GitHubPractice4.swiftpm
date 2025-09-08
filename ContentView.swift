import SwiftUI

struct ContentView: View {
    @State var tasks = ["Mow the lawn", "Feed the dog", "Grocery Shop"]
    var body: some View {
        VStack {
            List {
                ForEach(tasks, id: \.self){
                    task in
                    Text(task)
                }
            }
        }
    }
}
