import UIKit
import  Foundation

struct Post : Codable {
    
    var produto: String = ""
    var descricao : String?
    var preco: Float
    var desconto: Bool
    var imagem : URL
    
    /*var nameProduct : String = ""
    var descripitionProduct: String?
    var price: Float
    var discountProduct: Bool
    var image: URL*/
}

class NewProductsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //DISPLAY ITEM
        self.title = "Lista de Produtos"
        self.view.backgroundColor = .groupTableViewBackground
        
        //TO CALL MAKEREQUEST
        // makeRequest { (posts) in
        //print("posts: \(posts[0].title)")
        
        makeRequest()
            
        }
        
    }
    
    //GET API
    public func makeRequest () {
        
        let url = URL (string: "https://private-8f4dda-testeabi.apiary-mock.com/produtos")!
        
        // Instance Class Session Configuration and Clojure
        let task = URLSession.shared.dataTask(with: url) { ( data, response, error) in
            
          print("response: \(String(describing: response))")
            print("error: \(String(describing: error))")
            
            //Convert data string
            guard let responseData = data else {return}
            
            if let responseString = String (data: responseData, encoding: .utf8 ){
                
                print("data: \(String(describing: data))")
            }
            
        do{
            let posts = try JSONDecoder().decode ([Post].self, from: responseData)
            
            print("Objects Postsc:\(posts)")
                
                }catch let error {
                    
                    print("error: \(error)")
                    
                    //onCompletion (posts)
                                        
                        
            }
        }
       //Creating Call | LIFE CALL
       task.resume()
    }
    
    // MARK: - Table view data source
    //func numberOfSections(in tableView: UITableView) -> Int {
        
        //let listconst = 16
       // return listconst

     //}

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    
}


