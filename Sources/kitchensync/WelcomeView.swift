import SwiftUI

struct WelcomeView: View {
    @State private var kitchenCode: String = ""
    @State private var isConnected = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Enter Kitchen Code")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("Make sure kitchen is on same WiFi as counter.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                TextField("4-digit code", text: $kitchenCode)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onChange(of: kitchenCode) { newValue in
                        if newValue.count > 4 {
                            kitchenCode = String(newValue.prefix(4))
                        }
                    }
                    .padding(.horizontal)
                
                Button("Connect") {
                    isConnected = true
                }
                .buttonStyle(.borderedProminent)
                .disabled(kitchenCode.count != 4)
            }
            .padding()
            .navigationTitle("KitchenSync Counter")
            .navigationBarTitleDisplayMode(.large)
            .fullScreenCover(isPresented: $isConnected) {
                MainView()
            }
        }
    }
}