import UIKit
import SwiftUI
import WebKit



struct YouTubePlayerViewController: UIViewRepresentable {
    
    var VideoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        
        
    if VideoID.hasPrefix("https://www.youtube.com/watch?v=") {
            let trimmedString = VideoID.trimmingPrefix("https://www.youtube.com/watch?v=")
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
    } else if VideoID.hasPrefix("https://youtu.be/") {
            let trimmedString = VideoID.trimmingPrefix("https://youtu.be/")
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
    } else if VideoID.hasPrefix("https://www.youtube.com/") {
            let trimmedString = VideoID.trimmingPrefix("https://www.youtube.com/")
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
    } else if VideoID.hasPrefix("https://youtube.com/playlist?list=") {
            let trimmedString = VideoID.trimmingPrefix("https://youtube.com/playlist?list=")
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
    }
        
       
        
    }
}
