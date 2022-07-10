//
//  HomeViewController.swift
//  TossClone
//
//  Created by 이지수 on 2022/06/29.
//

import UIKit

import SnapKit

final class HomeViewController: UIViewController {
    var data: [TossData] = []
    
    // MARK: - property
    private lazy var scrollView = UIScrollView()
    private lazy var logoView: UIStackView = {
        var logoImage = UIImage(named: "tossLogo")
        let logoButton = UIButton()
        logoButton.setImage(logoImage, for: .normal)
        logoButton.imageView?.contentMode = .scaleAspectFit
        logoButton.addTarget(self, action: #selector(logoButtonPressed), for: .touchDown)
        let spacer = UIView()
        let logoStack = UIStackView(arrangedSubviews: [logoButton, spacer])
        logoStack.axis = .horizontal
        logoStack.distribution = .fillEqually
        return logoStack
    }()
    private lazy var addBarItem: UIBarButtonItem = {
        let addImage = UIImage(systemName: "plus")
        let addBarItem = UIBarButtonItem(image: addImage, style: .plain, target: self, action: #selector(addButtonPressed))
        addBarItem.tintColor = .systemGray
        return addBarItem
    }()
    private lazy var chatBarItem: UIBarButtonItem = {
        let chatImage = UIImage(systemName: "message.fill")
        let chatBarItem = UIBarButtonItem(image: chatImage, style: .plain, target: self, action: #selector(HomeViewController.chatButtonPressed))
        chatBarItem.tintColor = .systemGray
        return chatBarItem
    }()
    private lazy var bellBarItem: UIBarButtonItem = {
        let bellImage = UIImage(systemName: "bell.fill")
        let bellBarItem = UIBarButtonItem(image: bellImage, style: .plain,
                                          target: self, action: #selector(bellButtonPressed))
        bellBarItem.tintColor = .systemGray
        return bellBarItem
    }()
    private lazy var homeListView: UIStackView = {
        let stackView = UIStackView()
        let tossBankListView = HomeCell(frame: .zero, data: data[0])
        let assetsListView = HomeCell(frame: .zero, data: data[1])
        let consumptionListView = HomeCell(frame: .zero, data: data[2])
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 12.0
        [tossBankListView, assetsListView, consumptionListView].forEach { stackView.addArrangedSubview($0) }
        return stackView
    }()
    
    // MARK: - cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
    }
}

extension HomeViewController {
    private func setupNavigationBar() {
        navigationItem.titleView = logoView
        navigationItem.rightBarButtonItems = [bellBarItem, chatBarItem, addBarItem]
    }
    
    private func setupLayout() {
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        scrollView.addSubview(homeListView)
        homeListView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16.0)
            $0.trailing.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
    
    @objc func logoButtonPressed() {
        // action
    }
    @objc func addButtonPressed() {
        // action
    }
    @objc func chatButtonPressed() {
        // action
    }
    @objc func bellButtonPressed() {
        // action
    }
}
