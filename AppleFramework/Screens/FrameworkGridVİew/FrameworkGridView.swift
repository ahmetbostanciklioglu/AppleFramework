import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
//        NavigationStack {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
//            .navigationDestination(for: Framework.self) { framework in
//                FrameworkDetailView(viewModel: <#T##FrameworkDetailViewModel#>)
//            }
//            .sheet(isPresented: $viewModel.isShowingDetailView) {
//                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel, isShowingDetailView: <#T##Binding<Bool>#>))
//            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


