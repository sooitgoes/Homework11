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



    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

    }

    // MARK: - Setups

    private func setupView() {
        view.layer.insertSublayer(gradient, at: 0)

    }

    private func setupHierarchy() {

    }

    private func setupLayout() {

    }


    // MARK: - Actions




}

