import UIKit

class ViewController: UIViewController {

    // MARK: - UI Elements
    private lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.white.cgColor]
        gradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1)
        return gradient
    }()

    private lazy var login: UILabel = {
        let login = UILabel()
        login.text = "Login"
        login.textColor = .white
        login.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        login.translatesAutoresizingMaskIntoConstraints = false
        return login
    }()

    private lazy var loginField: UITextField = {
        let loginField = UITextField()
        let icon = UIImage(systemName: "person")

        loginField.placeholder = "keanureeves01"
        loginField.font = UIFont.systemFont(ofSize: 15)
        loginField.textAlignment = .center
        loginField.backgroundColor = .white
        loginField.layer.cornerRadius = 25
        loginField.setLeftIcon(icon ?? UIImage())
        loginField.tintColor = .gray
        loginField.translatesAutoresizingMaskIntoConstraints = false
        return loginField
    }()





    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setups

    private func setupView() {
        view.layer.insertSublayer(gradient, at: 0)

    }

    private func setupHierarchy() {
        view.addSubviews([login, loginField])
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            login.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            login.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 130),

            loginField.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 50),
            loginField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            loginField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            loginField.heightAnchor.constraint(equalToConstant: 50)

        ])
    }


    // MARK: - Actions




}

