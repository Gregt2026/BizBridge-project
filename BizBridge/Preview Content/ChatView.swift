//
//  ChatView.swift
//  BizBridge2
//
//  Created by Greg Tchobe on 11/26/24.
//

import SwiftUI

struct ChatView: View {
    @State private var messages: [String] = ["Welcome to BizBridge!", "Let's connect and share ideas."]
    @State private var newMessage: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Chat")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 20)
        
            ScrollViewReader { scrollView in
                ScrollView {
                    VStack(alignment: .leading, spacing: 10) {
                        ForEach(messages.indices, id: \.self) { index in
                            Text(messages[index])
                                .padding()
                                .background(Color.purple.opacity(0.2))
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .id(index)
                        }
                    }
                    .padding(.horizontal)
                }
                .background(Color.purple.opacity(0.1))
                .cornerRadius(10)
                .onChange(of: messages) { _ in
                    if let lastIndex = messages.indices.last {
                        withAnimation {
                            scrollView.scrollTo(lastIndex, anchor: .bottom)
                        }
                    }
                }
            }

            // Input Field and Send Button
            HStack {
                TextField("Type a message", text: $newMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(8)

                Button(action: sendMessage) {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                        .padding()
                        .background(newMessage.trimmingCharacters(in: .whitespaces).isEmpty ? Color.gray.opacity(0.5) : Color.gray)
                        .cornerRadius(8)
                }
                .disabled(newMessage.trimmingCharacters(in: .whitespaces).isEmpty)
            }
            .padding(.horizontal)
        }
        .padding()
    }

    func sendMessage() {
        let trimmed = newMessage.trimmingCharacters(in: .whitespaces)
        if !trimmed.isEmpty {
            messages.append(trimmed)
            newMessage = ""
        }
    }
}

#Preview {
    ChatView()
}


