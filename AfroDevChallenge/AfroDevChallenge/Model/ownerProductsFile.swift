import  UIKit
import Foundation

//Class Products list - array
class ownerProducts: Decodable {
    
    var nameProduct: String = ""
    var descripitionProduct: String?
    var price: Float
    var discountProduct: Bool
    var image: URL
    
}
