//
//  VideoListView.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/7.
//

import SwiftUI

struct VideoListView: View {
    @State var videos:[Video]=Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        NavigationView{
            List{
                ForEach(videos,id:\.id){
                    item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.name, videoTitle: item.name)){
                        VideoListItemView(video: item)
                            .padding(.vertical,8)
                    }

                }
            }//List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("视频",displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }){
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//NavigationView
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
