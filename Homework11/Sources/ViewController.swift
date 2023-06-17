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
        let personIcon = UIImage(systemName: "person")

        loginField.placeholder = "keanureeves01"
        loginField.font = UIFont.systemFont(ofSize: 15)
        loginField.backgroundColor = .white
        loginField.layer.cornerRadius = 25
        loginField.setLeftIcon(personIcon ?? UIImage())
        loginField.tintColor = .gray
        loginField.translatesAutoresizingMaskIntoConstraints = false
        return loginField
    }()

    private lazy var passwordField: UITextField = {
        let passwordField = UITextField()
        let lockIcon = UIImage(systemName: "lock.fill")

        passwordField.placeholder = "Password"
        passwordField.font = UIFont.systemFont(ofSize: 15)
        passwordField.backgroundColor = .white
        passwordField.layer.cornerRadius = 25
        passwordField.setLeftIcon(lockIcon ?? UIImage())
        passwordField.tintColor = .gray
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        return passwordField
    }()

    private lazy var loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = UIColor(named: "purpleButton")
        loginButton.layer.cornerRadius = 25
        loginButton.layer.shadowColor = UIColor.black.cgColor
        loginButton.layer.shadowOpacity = 0.3
        loginButton.layer.shadowOffset = .zero
        loginButton.layer.shadowRadius = 10
        loginButton.layer.shouldRasterize = true
        loginButton.layer.rasterizationScale = UIScreen.main.scale
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let forgotPasswordButton = UIButton(type: .system)
        forgotPasswordButton.setTitle("Forgot your password?", for: .normal)
        forgotPasswordButton.setTitleColor(.white, for: .normal)
        forgotPasswordButton.titleLabel?.font = .systemFont(ofSize: 12, weight: .bold)
        forgotPasswordButton.backgroundColor = .clear
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        return forgotPasswordButton
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
        view.addSubviews([
            login,
            loginField,
            passwordField,
            loginButton,
            forgotPasswordButton
        ])
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            login.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            login.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 130),

            loginField.topAnchor.constraint(equalTo: login.bottomAnchor, constant: 50),
            loginField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            loginField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            loginField.heightAnchor.constraint(equalToConstant: 50),

            passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 20),
            passwordField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            passwordField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            passwordField.heightAnchor.constraint(equalToConstant: 50),

            loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 50),
            loginButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            loginButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            loginButton.heightAnchor.constraint(equalToConstant: 50),

            forgotPasswordButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 15),
            forgotPasswordButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            forgotPasswordButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),





        ])
    }


    // MARK: - Actions




}

