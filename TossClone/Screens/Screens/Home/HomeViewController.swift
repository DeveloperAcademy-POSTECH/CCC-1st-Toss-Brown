//
//  HomeViewController.swift
//  TossClone
//
//  Created by 이지수 on 2022/06/29.
//

import UIKit

import SnapKit

final class HomeViewController: UIViewController {
    private lazy var collectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: "homeCell")
        return collectionView
    }()

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
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionview)
        collectionview.backgroundColor = .backgroundColor
        collectionview.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.size.width, height: 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.frame.width - 36
        return CGSize(width: width, height: 80)
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as? HomeCollectionViewCell
        cell?.setup()
        return cell ?? UICollectionViewCell()
    }
}
