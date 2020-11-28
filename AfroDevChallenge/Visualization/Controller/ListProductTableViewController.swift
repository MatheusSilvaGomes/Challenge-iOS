/*import UIKit

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
                    
                    self.ownerProducts == ownerProducts
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
    
    // MARK: - Table view data source
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return ownerProducts.count
    }

    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let readingProduct = ownerProducts[indexPath.row]
        return cell
    }
    
    public override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
           // let _ = ownerProducts [indexPath.row]
            //ProductListAPI().AppDelegate(ownerProducts) { (result) in
                switch result {
                case .success:
                    DispatchQueue.main.async {
                        self.cars.remove(at: indexPath.row)
                        tableView.deleteRows(at: [indexPath], with: .automatic)
                    }
                    
                case .failure:
                    
                    print("Fatal Error")
    
    func numberOfSections(in tableView: UITableView) -> Int {
    
        let listconst = 16
    
    return listconst
    
                    }
                }
            }
        }
    }
*/
