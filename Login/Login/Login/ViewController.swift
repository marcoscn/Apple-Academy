import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}

        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title =
                usernameTextField.text
        }
        
    }

    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: sender)
    }
    @IBAction func forgotUserNameTapped(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: forgotUserNameButton)
    }
    @IBAction func forgotPasswordTapped(_ sender: Any) {
        performSegue(withIdentifier: "Landing", sender: forgotPasswordButton)
    }
    
}

