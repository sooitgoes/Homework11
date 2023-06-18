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
        let checkIcon = UIImage(named: "check")

        loginField.placeholder = "keanureeves01"
        loginField.font = UIFont.systemFont(ofSize: 15)
        loginField.backgroundColor = .white
        loginField.layer.cornerRadius = 25
        loginField.setLeftIcon(personIcon ?? UIImage())
        loginField.setRightIcon(checkIcon ?? UIImage())
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

    private lazy var firstSeparator: UIView = {
        let firstSeparator = UIView()
        firstSeparator.backgroundColor = .lightGray
        firstSeparator.layer.cornerRadius = 5
        return firstSeparator
    }()

    private lazy var secondSeparator: UIView = {
        let secondSeparator = UIView()
        secondSeparator.backgroundColor = .lightGray
        secondSeparator.layer.cornerRadius = 5
        return secondSeparator
    }()

    private lazy var conectWithLabel: UILabel = {
        let conectWithLabel = UILabel()
        conectWithLabel.text = "or connect with"
        conectWithLabel.textAlignment = .center
        conectWithLabel.textColor = .gray
        conectWithLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        return conectWithLabel
    }()

    private lazy var connectWithStack: UIStackView = {
        let connectWithStack = UIStackView()
        connectWithStack.axis = .horizontal
        connectWithStack.alignment = .center
        connectWithStack.distribution = .fillEqually
        connectWithStack.addArrangedSubview(firstSeparator)
        connectWithStack.addArrangedSubview(conectWithLabel)
        connectWithStack.addArrangedSubview(secondSeparator)
        connectWithStack.translatesAutoresizingMaskIntoConstraints = false
        return connectWithStack
    }()

    private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton()
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        facebookButton.setTitleColor(.white, for: .normal)
        facebookButton.backgroundColor = .systemBlue
        facebookButton.layer.cornerRadius = 20
        facebookButton.layer.shadowColor = UIColor.black.cgColor
        facebookButton.layer.shadowOpacity = 0.3
        facebookButton.layer.shadowOffset = .zero
        facebookButton.layer.shadowRadius = 10
        facebookButton.layer.shouldRasterize = true
        facebookButton.layer.rasterizationScale = UIScreen.main.scale
        facebookButton.addLeftImage(image: UIImage(named: "facebook") ?? UIImage(), offset: 45)
        return facebookButton
    }()

    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton()
        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        twitterButton.setTitleColor(.white, for: .normal)
        twitterButton.backgroundColor = .purple
        twitterButton.layer.cornerRadius = 20
        twitterButton.layer.shadowColor = UIColor.black.cgColor
        twitterButton.layer.shadowOpacity = 0.3
        twitterButton.layer.shadowOffset = .zero
        twitterButton.layer.shadowRadius = 10
        twitterButton.layer.shouldRasterize = true
        twitterButton.layer.rasterizationScale = UIScreen.main.scale
        twitterButton.addLeftImage(image: UIImage(named: "twitter") ?? UIImage(), offset: 45)
        return twitterButton
    }()

    private lazy var facebookTwitterStack: UIStackView = {
        let facebookTwitterStack = UIStackView()
        facebookTwitterStack.axis = .horizontal
        facebookTwitterStack.alignment = .center
        facebookTwitterStack.distribution = .fillEqually
        facebookTwitterStack.spacing = 15
        facebookTwitterStack.addArrangedSubview(facebookButton)
        facebookTwitterStack.addArrangedSubview(twitterButton)
        facebookTwitterStack.translatesAutoresizingMaskIntoConstraints = false
        return facebookTwitterStack
    }()

    private lazy var dontAccountButton: UIButton = {
        let dontAccountButton = UIButton(type: .system)
        dontAccountButton.setTitle("Dont have account?", for: .normal)
        dontAccountButton.setTitleColor(.gray, for: .normal)
        dontAccountButton.titleLabel?.font = .systemFont(ofSize: 12, weight: .bold)
        dontAccountButton.backgroundColor = .clear
        return dontAccountButton
    }()

    private lazy var signUpButton: UIButton = {
        let signUpButton = UIButton(type: .system)
        signUpButton.setTitle("Sign Up", for: .normal)
        signUpButton.setTitleColor(.systemPurple, for: .normal)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 12, weight: .bold)
        signUpButton.backgroundColor = .clear
        return signUpButton
    }()

    private lazy var dontAccountSignUpStack: UIStackView = {
        let dontAccountSignUpStack = UIStackView()
        dontAccountSignUpStack.axis = .horizontal
        dontAccountSignUpStack.alignment = .center
        dontAccountSignUpStack.distribution = .fillProportionally
        dontAccountSignUpStack.addArrangedSubview(dontAccountButton)
        dontAccountSignUpStack.addArrangedSubview(signUpButton)
        dontAccountSignUpStack.translatesAutoresizingMaskIntoConstraints = false
        return dontAccountSignUpStack
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
            forgotPasswordButton,
            connectWithStack,
            facebookTwitterStack,
            dontAccountSignUpStack
        ])
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            login.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            login.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 110),

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
            forgotPasswordButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 110),
            forgotPasswordButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -110),

            firstSeparator.heightAnchor.constraint(equalToConstant: 2),

            secondSeparator.heightAnchor.constraint(equalToConstant: 2),

            connectWithStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            connectWithStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 45),
            connectWithStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -45),

            facebookButton.heightAnchor.constraint(equalToConstant: 40),

            twitterButton.heightAnchor.constraint(equalToConstant: 40),

            facebookTwitterStack.topAnchor.constraint(equalTo: connectWithStack.bottomAnchor, constant: 30),
            facebookTwitterStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            facebookTwitterStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),

            dontAccountSignUpStack.topAnchor.constraint(equalTo: facebookTwitterStack.bottomAnchor, constant: 20),
            dontAccountSignUpStack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 75),
            dontAccountSignUpStack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -75)
        ])
    }
}

