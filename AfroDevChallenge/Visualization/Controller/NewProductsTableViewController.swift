import UIKit
import  Foundation

struct Post {
    
    let nameProduct: String = ""
    let descripitionProduct: String?
    let price: Float
    let discountProduct: Bool
    let image: URL
}

class NewProductsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TO CALL MAKEREQUEST
        makeRequest() { (posts ) in
            
        }
        
        //DISPLAY ITEM
        self.title = "Lista de Produtos"
        self.view.backgroundColor = .groupTableViewBackground
        
    }
    
    //GET API
    private func makeRequest () {
        
        let url = URL (string: "https://private-8f4dda-testeabi.apiary-mock.com/produtos")!
        
        // Instance Class Session Configuration and Clojure
        let task = URLSession.shared.dataTask(with: url) { ( data, response, error) in
            
          print("response: \(String(describing: response))")
            print("error: \(String(describing: error))")
            
            guard let responseData = data else {return}
            
            /*if let responseString = String (data: responseData, encoding: .utf8 ){
                
                print("data: \(String(describing: data))")
            }*/
            
        do{
            let posts = JSONDecoder().decode([Post].self, from: responseData)
            
            print("ObJects Postsc:"\(posts)")
                
                }catch let error {
                    
                    print("error: \(error)")
                    completion(posts)
                                        
                        
            }
        }
        
        task.resume()
    }
    
    // MARK: - Properties
    var ownerProducts : [ownerProducts] = []
    
   /* public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadProduct()
        
    }*/

    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        let listconst = 16
        return listconst

     }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0

    }

}
