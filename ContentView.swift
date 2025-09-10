import SwiftUI
struct ContentView: View {
    @State var tasks: [Task] = [Task(nameOfTask: "Mow the lawn"), Task(nameOfTask: "Feed the dog"),
                                Task(nameOfTask: "Grocery Shop") ]
    var body: some View {
        HeaderView(tasks: $tasks)
        VStack {
            List {
                ForEach(tasks, id: \.self){
                    task in
                    Text(task.nameOfTask)
                }
            }
        }
    }
}
