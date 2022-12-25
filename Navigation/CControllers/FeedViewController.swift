import UIKit

class FeedViewController: UIViewController {

    var post = Post(title: "My post")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
         setupButton()

    }

        private lazy var button: UIButton = {

            let button = UIButton()

            button.backgroundColor = .systemPink

            button.layer.cornerRadius = 12

            button.setTitle("Перейти на пост", for: .normal)

            button.setTitleColor(.lightGray, for: .normal)

            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)

            button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

            button.translatesAutoresizingMaskIntoConstraints = false

            return button

        }()

        private func setupButton() {

            self.view.addSubview(self.button)

            self.button.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100).isActive = true

            self.button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true

            self.button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true

            self.button.heightAnchor.constraint(equalToConstant: 50).isActive = true

        }

    
    @objc private func buttonAction() {

            let postViewController = PostViewController()

            self.navigationController?.pushViewController(postViewController, animated: true)
        
           postViewController.titlePost = post.title
        }
    

   
}

