import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("KitchenSync Counter")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Coming Soon...")
                .font(.title2)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("KitchenSync Counter")
        .navigationBarTitleDisplayMode(.large)
    }
}