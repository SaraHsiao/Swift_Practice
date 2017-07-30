
import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let fullScreenSize = UIScreen.main.bounds.size
        
        //UIView
        let firstView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        firstView.backgroundColor = UIColor.blue
        firstView.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.5)
        self.view.addSubview(firstView)
        
        //UILabel
        let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 80))
        myLabel.text = "Swift 起步走"
        myLabel.textColor = UIColor.red
        myLabel.backgroundColor = UIColor.orange
        myLabel.center = CGPoint(x: fullScreenSize.width * 0.5, y: fullScreenSize.height * 0.5)
        myLabel.font = UIFont.boldSystemFont(ofSize: 36)
        myLabel.textAlignment = .center
        myLabel.shadowColor = UIColor.black
        myLabel.shadowOffset = CGSize(width: 2, height: 2)
        self.view.addSubview(myLabel)
        
        //UITextField
        let myTextField = UITextField(frame: CGRect(x: 0, y: 50, width: 200, height: 50))
        myTextField.backgroundColor = UIColor.gray
        myTextField.placeholder = "請輸入訊息"
        myTextField.textColor = UIColor.white
        myTextField.keyboardType = .default
        myTextField.returnKeyType = .done
        myTextField.borderStyle = .roundedRect
        myTextField.clearButtonMode = .whileEditing
        myTextField.enablesReturnKeyAutomatically = true
        myTextField.delegate = self
        self.view.addSubview(myTextField)
        
        //UITextView
        let myTextView = UITextView(frame: CGRect(x: 0, y: 420, width: 250, height: 200))
        myTextView.backgroundColor = UIColor.gray
        myTextView.textColor = UIColor.white
        myTextView.text = "Swift 起步走"
        myTextView.font = UIFont.boldSystemFont(ofSize: 36)
        myTextView.textAlignment = .left
        myTextView.keyboardType = .default
        myTextView.returnKeyType = .default
        myTextView.isEditable = true
        myTextView.isSelectable = true
        self.view.addSubview(myTextView)
        
        //UIMenuItem
        let sendMail = UIMenuItem(title: "寄送", action: #selector(mail))
        let facebook = UIMenuItem(title: "FB", action: #selector(fb))
        let menu = UIMenuController.shared
        menu.menuItems = [sendMail,facebook]
        
        //UIButton.1
        var myButton = UIButton(type: .contactAdd)
        myButton.center = CGPoint(x: 20, y: 120)
        self.view.addSubview(myButton)
        
        //UIButton.2
        myButton = UIButton(type: .infoLight)
        myButton.center = CGPoint(x: 80, y: 120)
        self.view.addSubview(myButton)
        
        //UIButton.3
        myButton = UIButton(frame: CGRect(x: 300, y: 80, width: 100, height: 30))
        myButton.backgroundColor = UIColor.black
        myButton.setTitle("按我", for: .normal)
        myButton.setTitleColor(UIColor.white, for: .normal)
        myButton.isEnabled = true
        myButton.addTarget(nil, action: #selector(clickButton), for:.touchUpInside)
        self.view.addSubview(myButton)
        
    }
    //UIMenuItem
    func mail() {
    }
    func fb() {
    }
    //UIButton.3
    func clickButton() {
        if self.view.backgroundColor!.isEqual(UIColor.white) {
            self.view.backgroundColor = UIColor.black
        } else {
            self.view.backgroundColor = UIColor.white
        }
    }
}
