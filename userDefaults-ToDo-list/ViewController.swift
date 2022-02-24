
import UIKit

enum KeyForDataBase: String {
    case city
    case street
    case house
    case build
    case flat
}

class ViewController: UIViewController {
    //MARK: Outlets
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var houseField: UITextField!
    @IBOutlet weak var buildField: UITextField!
    @IBOutlet weak var flatField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        cityField.text   = defaults.string(forKey: KeyForDataBase.city.rawValue)
        streetField.text = defaults.string(forKey: KeyForDataBase.street.rawValue)
        houseField.text  = defaults.string(forKey: KeyForDataBase.house.rawValue)
        buildField.text  = defaults.string(forKey: KeyForDataBase.build.rawValue)
        flatField.text   = defaults.string(forKey: KeyForDataBase.flat.rawValue) 
    
    @IBAction func saveAction(_ sender: Any) {
        let city   =   cityField.text!
        let street =   streetField.text!
        let house  =   houseField.text!
        let build  =   buildField.text!
        let flat   =   flatField.text!
        
        if !city.isEmpty && !street.isEmpty && !house.isEmpty && !flat.isEmpty{
            defaults.setValue(city,   forKey:   KeyForDataBase.city.rawValue)
            defaults.setValue(street, forKey:   KeyForDataBase.street.rawValue)
            defaults.setValue(house,  forKey:   KeyForDataBase.house.rawValue)
            defaults.setValue(build,  forKey:   KeyForDataBase.build.rawValue)
            defaults.setValue(flat,   forKey:   KeyForDataBase.flat.rawValue)            
        }
    }  
}

