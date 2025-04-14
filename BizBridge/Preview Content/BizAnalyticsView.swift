//
//  BizAnalyticsView.swift
//  BizBridge2
//
//  Created by Greg Tchobe on 11/26/24.
//

import SwiftUI

struct BizAnalyticsView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                // Title
                Text("Business Analytics")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                // Analytics Buttons
                Button(action: {
                    print("Website Traffic tapped")
                }) {
                    AnalyticsButtonLabel(text: "Website Traffic", icon: "globe")
                }
                
                Button(action: {
                    print("Sales Data tapped")
                }) {
                    AnalyticsButtonLabel(text: "Sales Data", icon: "chart.bar")
                }
                
                Button(action: {
                    print("Customer Engagement tapped")
                }) {
                    AnalyticsButtonLabel(text: "Customer Engagement", icon: "person.2.fill")
                }
                
                Button(action: {
                    print("SEO Tips tapped")
                }) {
                    AnalyticsButtonLabel(text: "SEO Tips", icon: "lightbulb")
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("Analytics")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Help tapped")
                    }) {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

struct AnalyticsButtonLabel: View {
    var text: String
    var icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.purple)
                .frame(width: 24, height: 24)
            
            Text(text)
                .font(.headline)
                .foregroundColor(.purple)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.purple.opacity(0.1))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

struct BizAnalyticsView_Previews: PreviewProvider {
    static var previews: some View {
        BizAnalyticsView()
    }
}

#Preview {
    BizAnalyticsView()
}
