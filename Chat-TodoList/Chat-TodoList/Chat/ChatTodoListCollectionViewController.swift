//
//  ChatTodoListCollectionViewController.swift
//  Chat-TodoList
//
//  Created by 강희선 on 2021/11/22.
//

import UIKit

class ChatTodoListCollectionViewController: UICollectionViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.titleView = setTitleView()
    }
    func setTitleView() -> UIView{
        let firstView = UIView()
        let firstLabel = UILabel()
        firstView.addSubview(firstLabel)
        firstLabel.text = "일반적인"
        firstLabel.font = UIFont.systemFont(ofSize: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize, weight: .bold)
        firstLabel.textColor = .blue
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstLabel.leadingAnchor.constraint(equalTo: firstView.leadingAnchor),
            firstLabel.trailingAnchor.constraint(equalTo: firstView.trailingAnchor),
            firstLabel.topAnchor.constraint(equalTo: firstView.topAnchor),
            firstLabel.bottomAnchor.constraint(equalTo: firstView.bottomAnchor),
        ])
        
        let secondView = UIView()
        let secondLabel = UILabel()
        secondView.addSubview(secondLabel)
        secondLabel.text = "Todo List"
        secondLabel.font = UIFont.systemFont(ofSize: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize, weight: .bold)
        secondLabel.textColor = .black
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondLabel.leadingAnchor.constraint(equalTo: secondView.leadingAnchor),
            secondLabel.trailingAnchor.constraint(equalTo: secondView.trailingAnchor),
            secondLabel.topAnchor.constraint(equalTo: secondView.topAnchor),
            secondLabel.bottomAnchor.constraint(equalTo: secondView.bottomAnchor),
            
        ])
        let stackView = UIStackView(arrangedSubviews: [firstView, secondView])
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .horizontal
        return stackView
    }
}
