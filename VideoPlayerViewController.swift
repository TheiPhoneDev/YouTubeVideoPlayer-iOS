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
            let trimmedString = VideoID.deletingPrefixes(["https://www.youtube.com/watch?v="])
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        } else if VideoID.hasPrefix("https://youtu.be/") {
            let trimmedString = VideoID.deletingPrefixes(["https://youtu.be/"])
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        } else if VideoID.hasPrefix("https://www.youtube.com/") {
            let trimmedString = VideoID.deletingPrefixes(["https://www.youtube.com/"])
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        }else if VideoID.hasPrefix("https://youtube.com/playlist?list=") {
            let trimmedString = VideoID.deletingPrefixes(["https://youtube.com/playlist?list="])

            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        } else if VideoID.hasPrefix("http://www.youtube.com/watch?v=") {
            let trimmedString = VideoID.deletingPrefixes(["http://www.youtube.com/watch?v="])
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        } else if VideoID.hasPrefix("http://youtu.be/") {
            let trimmedString = VideoID.deletingPrefixes(["http://youtu.be/"])
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        } else if VideoID.hasPrefix("http://www.youtube.com/") {
            let trimmedString = VideoID.deletingPrefixes(["http://www.youtube.com/"])
            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        }else if VideoID.hasPrefix("http://youtube.com/playlist?list=") {
            let trimmedString = VideoID.deletingPrefixes(["http://youtube.com/playlist?list="])

            let path = "https://www.youtube.com/embed/\(trimmedString)"

            guard let url = URL(string: path) else { return }

            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        }

        
    }
}



extension String {
   func deletingPrefixes(_ prefixes: [String]) -> String {
       var resultString = self

       prefixes.map {
           if resultString.hasPrefix($0.uppercased()) || resultString.hasPrefix($0.lowercased()) {
              resultString = resultString.dropFirst($0.count).description
              print("\(resultString)")
          }
      }
      return resultString
   }
}



