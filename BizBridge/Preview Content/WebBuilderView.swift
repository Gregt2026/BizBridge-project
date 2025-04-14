//
//  WebBuilderView.swift
//  BizBridge2
//
//  Created by Greg Tchobe on 11/26/24.
//

import SwiftUI

struct WebBuilderView: View {
    // State properties to hold user input
    @State private var businessName = ""
    @State private var businessCategory = ""
    @State private var services = ""
    @State private var hoursOfOperation = ""
    @State private var location = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                // Title
                Text("Web Builder")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                // Business Name Section
                InputSection(title: "Business Name", placeholder: "Enter your business name", text: $businessName)
                
                // Business Category Section
                InputSection(title: "Business Category", placeholder: "Enter your business category", text: $businessCategory)
                
                // Services Section
                InputSection(title: "Services", placeholder: "Enter your services", text: $services)
                
                // Hours of Operation Section
                InputSection(title: "Hours of Operation", placeholder: "Enter hours of operation", text: $hoursOfOperation)
                
                // Location Section
                InputSection(title: "Location", placeholder: "Enter your location", text: $location)
                
                Spacer()
                
                // Submit Button
                Button(action: handleSubmission) {
                    Text("Submit")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Web Builder")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Help tapped")
                    }) {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.purple)
                    }
                }
            }
        }
    }
    
    // Function to handle form submission
    private func handleSubmission() {
        print("Submitted business information:")
        print("Name: \(businessName)")
        print("Category: \(businessCategory)")
        print("Services: \(services)")
        print("Hours: \(hoursOfOperation)")
        print("Location: \(location)")
    }
}

struct InputSection: View {
    var title: String
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
            TextField(placeholder, text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding(.horizontal)
    }
}

struct WebBuilderView_Previews: PreviewProvider {
    static var previews: some View {
        WebBuilderView()
    }
}

#Preview {
    WebBuilderView()
}
