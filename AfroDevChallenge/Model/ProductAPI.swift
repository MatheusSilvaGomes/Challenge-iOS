import UIKit
import Foundation

//Enum Error - Possible Error
enum ProductAPIError: Error {
    case badURL
    case taskError
    case noResponse
    case invalidationStatusCode (Int)
    case noData
    case decodeError
}

//API List
class  ProductListAPI {
    
    // Primary base
    private let basePath = "https://private-8f4dda-testeabi.apiary-mock.com/produtos"
    
    // Instance Class Session Configuration and Clojure
    private let sessionConfiguration: URLSessionConfiguration = {
    let configuration = URLSessionConfiguration.default
        
        configuration.allowsCellularAccess = true
        configuration.timeoutIntervalForRequest = 10
        configuration.httpMaximumConnectionsPerHost = 1
        //Header and Bory
        configuration.httpAdditionalHeaders = ["Content-Type":"application/Json"]
        
        return configuration
        
    }()
    
    //Instance proprietary - instantiate if true
    private lazy var session = URLSession(configuration: sessionConfiguration)
    
    //Creating URL Acess - > Result generic case
    func loadProduct(onComplete: @escaping (Result<[ownerProducts], ProductAPIError>) -> Void) {
                        
        guard let url = URL (string: basePath) else {
                        
            onComplete (.failure (.badURL))
            return
                        
            }
                    
            //object consumin API - date Json|response data relatory| error
            let task = session.dataTask(with: url) { (data, response, error) in
            
            if let _ = error {
                
                onComplete (.failure (.taskError))
               //print(error) -> Warnig Test
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                
                onComplete (.failure (.noResponse))
                print("Resposta Invalida!")
                return
            }
            //Status Code -> Paper Math Operetor
            if !(200...299 ~= response.statusCode) {
                            
                //onComplete(.failure(.invalidStatusCode(response.statusCode)))
                
                print("Status Code Invalido:", response.statusCode)
                return
            }
            
            guard let data = data else {
                        
                onComplete (.failure (.noData))
                print("NOT ACESS VALIDATION")
                return
            }
            
            do {
                
                //reading Json -> Decoder error | pass reading closure
                let raedingProduct = try JSONDecoder().decode([ownerProducts].self, from: data)
                
               
                onComplete(.success(raedingProduct))
            
            } catch {
                
                onComplete(.failure(.decodeError))
        
            }   
        }
    
        task.resume()
    }
}
