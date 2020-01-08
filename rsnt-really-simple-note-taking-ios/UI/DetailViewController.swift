//
//  DetailViewController.swift
//  rsnt-really-simple-note-taking-ios
//
//  Created by Németh László Harri on 2019. 01. 21..
//  Copyright © 2019. Németh László Harri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var noteTitleLabel: UILabel!
    @IBOutlet weak var noteTextTextView: UITextView!
    @IBOutlet weak var noteDate: UILabel!
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let topicLabel = noteTitleLabel,
               let dateLabel = noteDate,
               let textView = noteTextTextView {
                topicLabel.text = detail.noteTitle
                dateLabel.text = ReallySimpleNoteDateHelper.convertDate(date: Date.init(seconds: detail.noteTimeStamp))
                textView.text = detail.noteText
                // call()
            }
        }
    }
    
    //func analyze(text: String) {
        
    //}

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    var detailItem: ReallySimpleNote? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showChangeNoteSegue" {
            let changeNoteViewController = segue.destination as! ReallySimpleNoteCreateChangeViewController
            if let detail = detailItem {
                changeNoteViewController.setChangingReallySimpleNote(
                    changingReallySimpleNote: detail)
            }
        }
    }
}

/*extension URLRequest {
  
    /**
     Returns a cURL command representation of this URL request.
     */
    public var curlString: String {
        guard let url = url else { return "" }
        var baseCommand = "curl \(url.absoluteString)"
        
        if httpMethod == "HEAD" {
            baseCommand += " --head"
        }
        
        var command = [baseCommand]
        
        if let method = httpMethod, method != "GET" && method != "HEAD" {
            command.append("-X \(method)")
        }

        if let headers = allHTTPHeaderFields {
            for (key, value) in headers where key != "Cookie" {
                command.append("-H '\(key): \(value)'")
            }
        }
        
        if let data = httpBody, let body = String(data: data, encoding: .utf8) {
            command.append("-d '\(body)'")
        }
        
        return command.joined(separator: " \\\n\t")
    }
    
    init?(curlString: String) {
        return nil
    }
    
} */

/* extension URLRequest {
    init(_ url: URL, userAgent: String = "your default user agent", cachePolicy: CachePolicy = .useProtocolCachePolicy, timeInterval: TimeInterval = 60) {
        self.init(url: url, cachePolicy: cachePolicy, timeoutInterval: timeInterval)
        setValue(userAgent, forHTTPHeaderField: "User-Agent")
    }
}

struct NumbersResult { }

func fetchNumbersFromServer(request: URLRequest, completion: @escaping (NumbersResult) -> ()) {
    URLSession.shared.dataTask(with: request) { data, response, error  in
        // handle response
        print("here ")
        
    }.resume()
}

func call() {
    let url = URL(string: "https://www.google.com")!
    let request = URLRequest(url)  // you can also pass another userAgent, cachePolicy and timeInterval here if needed
    fetchNumbersFromServer(request: request) { numbers in
    
    }
} */
