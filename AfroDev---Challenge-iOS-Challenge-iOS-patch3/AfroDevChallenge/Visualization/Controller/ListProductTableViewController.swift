import UIKit

public class ListProductTableViewController: UITableViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        //Display Item
        self.title = "Lista de Produtos"
        self.view.backgroundColor = .groupTableViewBackground
    
    // MARK: - Properties
        var ownerProducts : [ownerProducts] = []
    
    // MARK: - Super Methods
        func viewDidLoad() {
        super.viewDidLoad()
            
        }
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadProduct()
        
    }
    
    // MARK: - Methods
     func loadProduct() {
        
        ProductListAPI().loadProduct { (result) in
            
            switch result {
                case .success(let raedingProduct):
                    
                    print("Total de Produtos:", raedingProduct.count)
                    
                case .failure (let ProductAPIError):
                    
                    switch ProductAPIError.self {
                    case .badURL:
                        print("URL Invalid")
                    case .invalidationStatusCode:()
                        
                    default:
                        print("ERROR NO DESCRIPTION")
                
                    }
                }
            }
        }
    
    
   /* public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return ownerProducts.count
        
    } */

    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //let readingProduct = ownerProducts
        
        return cell
    }
    
    public override func numberOfSections(in tableView: UITableView) -> Int {
    
        let listconst = 16
        return listconst
    }
    
    
}
