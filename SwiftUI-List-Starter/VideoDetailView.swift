//
//  VideoDetailView.swift
//  SwiftUI-List-Starter
//
//  Created by Uchchhwas Roy on 15/3/23.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
            Text(video.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: video.url, label: {
                WatchNowButton()
            })
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

struct WatchNowButton: View {
    var body: some View {
        Text("Watch Now")
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
