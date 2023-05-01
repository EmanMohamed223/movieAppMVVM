//
//  networkF.swift
//  Iteams
//
//  Created by Eman on 16/01/2023.
//

import Foundation

class networkF
{
  static  func fetchResult(complitionHandler: @escaping (MyResult?) -> Void){
        
        // 1-
        let url = URL(string: "https://imdb-api.com/en/API/BoxOffice/k_dx2emhzm")
        guard let newUrl = url else{
            return
        }
        // 2-
        let request = URLRequest(url: newUrl)
        // 3-
        let session = URLSession(configuration: .default)
        // 4-
        let task = session.dataTask(with: request) { (data, response, error) in
            // 6-
            guard let data = data else{
                complitionHandler(nil)
                return
            }
            do{
                /*
                 let result = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! Dictionary<String,Any>
                 let arr = result["items"] as! Array<Dictionary<String,String>>
                 //print("items: \(result["items"])")
                 let item = arr[0]
                 print("first item is \(item["title"] ?? "no title")")
                 */
                let result = try JSONDecoder().decode(MyResult.self, from: data)
                //print(result.items[0].header ?? "No title")
                
                complitionHandler(result)
            }catch let error{
                print("error")
                print(error.localizedDescription)
                complitionHandler(nil)
            }
        }
        // 5-
        task.resume()
    }
}
