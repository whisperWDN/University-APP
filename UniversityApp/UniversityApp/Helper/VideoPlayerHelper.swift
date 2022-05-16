//
//  VideoPlayerHelper.swift
//  ThePlacesOfInterest
//
//  Created by admin on 2022/4/9.
//

import Foundation
import AVKit

var videoPlayer:AVPlayer?

func playVideo(fileName:String,fileFormat:String) -> AVPlayer{
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil
    {
        videoPlayer = AVPlayer(url:Bundle.main.url(forResource: fileName, withExtension: fileFormat)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
