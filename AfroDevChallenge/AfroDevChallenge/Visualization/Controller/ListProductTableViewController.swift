import UIKit

class ListProductTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Display Item
        self.title = "Lista de Produtos"
        self.view.backgroundColor = .groupTableViewBackground
    }

    /*/ MARK: - Properties
    var ownerProducts : [ownerProducts] = []
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadProduct()
        
    }
    
    // MARK: - Methods
    private func loadProduct() {
        
        //Get List
        ProductAPI().loadProduct {[weak self] (result) in
            
            guard let self = self else {return}
            
            switch result {
            case .success(let ):
                self.cars = cars
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let carApiError):
                switch carApiError {
                case .badURL:
                    print("URL inválida!")
                case .invalidStatusCode(let statusCode):
                    print("O servidor retornou um status code inválido:", statusCode)
                default:
                    print("Erro descohecido")
                }
            }
        }
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let car = cars[indexPath.row]
        cell.textLabel?.text = car.name
        cell.detailTextLabel?.text = car.brand
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            let car = cars[indexPath.row]
            CarAPI().deleteCar(car) { (result) in
                switch result {
                case .success:
                    DispatchQueue.main.async {
                        self.cars.remove(at: indexPath.row)
                        tableView.deleteRows(at: [indexPath], with: .automatic)
                    }
                case .failure:
                    print("ERRRROOOOOOUUUU!")
                }
            }
        }
        
    }
}
   */
    
override func numberOfSections(in tableView: UITableView) -> Int {
    
    let listconst = 16
    
return listconst
    
    }
}
