//
//  emotion-analysis.swift
//  rsnt-really-simple-note-taking-ios
//
//  Created by Priyanka Jain on 1/7/20.
//  Copyright © 2020 Németh László Harri. All rights reserved.
//

import Foundation


/*
 password: rsSpT2!JqG76wT&
 
 {
   "apikey": "jARPjzIQmpjWki4Ac2eKQDrcboDxA9xxWRHGyC-6uET7",
   "iam_apikey_description": "Auto-generated for key 1adba9a7-c85e-421b-938a-6dec45dce19e",
   "iam_apikey_name": "Auto-generated service credentials",
   "iam_role_crn": "crn:v1:bluemix:public:iam::::serviceRole:Manager",
   "iam_serviceid_crn": "crn:v1:bluemix:public:iam-identity::a/142289d985194c1886d3ba7f45135f23::serviceid:ServiceId-407d69fc-1dd9-462c-b0ba-0af11ebabc98",
   "url": "https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/745958f2-d4fc-4abc-8d35-66697d678125"
 }
 
 https://cloud.ibm.com/services/tone-analyzer/crn%3Av1%3Abluemix%3Apublic%3Atone-analyzer%3Aus-south%3Aa%2F142289d985194c1886d3ba7f45135f23%3A745958f2-d4fc-4abc-8d35-66697d678125%3A%3A?paneId=gettingStarted&new=true#getting-started-curl
 */

  
/**
 * Copyright IBM Corporation 2016
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

// import RestKit
// import KituraNet
// import SwiftyJSON


/**
 The IBM Watson Tone Analyzer service uses linguistic analysis to detect emotional tones,
 social propensities, and writing styles in written communication. Then it offers suggestions
 to help the writer improve their intended language tones.
**/

/*
public class ToneAnalyzer {
    
    private let username: String
    private let password: String
    private let version: String
    private let serviceURL: String
    private let userAgent = "watson-apis-ios-sdk/0.4.2 ToneAnalyzerV3 - Open Swift"
    private let domain = "com.ibm.watson.developer-cloud.ToneAnalyzerV3"

    /**
     Create a `ToneAnalyzer` object.
 
     - parameter username: The username used to authenticate with the service.
     - parameter password: The password used to authenticate with the service.
     - parameter version: The release date of the version of the API to use. Specify the date
            in "YYYY-MM-DD" format.
     - parameter serviceURL: The base URL to use when contacting the service.
     */
    public init(
        username: String,
        password: String,
        version: String,
        serviceURL: String = "https://gateway.watsonplatform.net/tone-analyzer/api")
    {
        self.username = username
        self.password = password
        self.version = version
        self.serviceURL = serviceURL
    }


    /**
     Analyze the tone of the given text.
     
     The message is analyzed for several tones—social, emotional, and writing. For each tone,
     various traits are derived (e.g. conscientiousness, agreeableness, and openness).
     
     - parameter text: The text to analyze.
     - parameter tones: Filter the results by a specific tone. Valid values for `tones` are
            `emotion`, `writing`, or `social`.
     - parameter sentences: Should sentence-level tone analysis by performed?
     - parameter failure: A function invoked if an error occurs.
     - parameter success: A function invoked with the tone analysis.
     */
    public func getTone(
        text: String,
        tones: [String]? = nil,
        sentences: Bool? = nil,
        failure: ((RestError) -> Void)? = nil,
        success: @escaping (ToneAnalysis) -> Void) {
        
        let body = "{\"text\": \"\(text)\"}".data(using: String.Encoding.utf8)
        
        // construct query parameters
        var queryParameters = [URLQueryItem]()
        queryParameters.append(URLQueryItem(name: "version", value: version))
        if let tones = tones {
            let tonesList = tones.joined(separator: ",")
            queryParameters.append(URLQueryItem(name: "tones", value: tonesList))
        }
        if let sentences = sentences {
            queryParameters.append(URLQueryItem(name: "sentences", value: "\(sentences)"))
        }
        
        // construct REST request
        let request = RestRequest(
            method: .POST,
            url: serviceURL + "/v3/tone",
            acceptType: "application/json",
            contentType: "application/json",
            queryParameters: queryParameters,
            messageBody: body,
            username: self.username,
            password: self.password
        )
        
        // execute REST request
        request.responseJSON { response in
            switch response {
            case .success(let json): success(ToneAnalysis(json: json))
            case .failure(let error): failure?(error)
            }
        }
    }
}

*/
