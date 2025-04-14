//
//  HomeView.swift
//  BizBridge2
//
//  Created by Greg Tchobe on 11/26/24.
//

import SwiftUI

struct HomeView: View {
    @State private var businessName = "Greg.Cutz"
    @State private var accountName = "Greg T" // Replace with actual account data
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                // App Title
                Text("BizBridge")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .foregroundColor(.purple)
                
                // Business Logo
                Image(systemName: "building.2.crop.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.purple)
                    .padding(.vertical, 30)
                
                // Business Name
                Text(businessName)
                    .font(.title2)
                    .fontWeight(.bold)
                
                // Account Name
                Text("Account: \(accountName)")
                    .font(.headline)
                    .foregroundColor(.gray)
                
                Spacer()
                
                // Logout Button
                Button(action: {
                    print("Logout tapped")
                }) {
                    Text("Log Out")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Account")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Settings tapped")
                    }) {
                        Image(systemName: "gearshape.fill")
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

#Preview {
    HomeView()
}
