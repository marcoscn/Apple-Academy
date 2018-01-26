//: Playground - noun: a place where people can play
import PlaygroundSupport
import UIKit

PlaygroundPage.current.needsIndefiniteExecution = true

// Extension
extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self,
                                       resolvingAgainstBaseURL: true)
        components?.queryItems = queries.flatMap
            { URLQueryItem(name: $0.0, value: $0.1) }
        return components?.url
    }
}






// Code
let nasaURL = URL(string: "https://api.nasa.gov/planetary/apod")!
let itunesURL = URL(string: "https://itunes.apple.com/search?")!

let query: [String: String] = [
    "api_key": "DEMO_KEY",
    "date": "2011-07-14"
]

let url = nasaURL.withQueries(query)!
let task = URLSession.shared.dataTask(with: url) { (data,
    response, error) in
    if let data = data,
            let string = String(data: data, encoding: .utf8) {
        print(string)
    }
}
task.resume()


