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
        view.addSubviews([login])
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            login.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            login.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 130)

        ])
    }


    // MARK: - Actions




}

