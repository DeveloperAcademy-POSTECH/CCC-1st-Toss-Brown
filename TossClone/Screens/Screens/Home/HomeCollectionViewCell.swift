//
//  HomeCollectionViewCell.swift
//  TossClone
//
//  Created by 이지수 on 2022/06/30.
//

import UIKit

import SnapKit

final class HomeCollectionViewCell: UICollectionViewCell {
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.layer.cornerRadius = 25.0
        stackView.backgroundColor = .white
        stackView.spacing = 10
        return stackView
    }()
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "토스뱅크"
        label.numberOfLines = 1
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    // MARK: - func
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        super.preferredLayoutAttributesFitting(layoutAttributes)
        layoutIfNeeded()
        
        let size = contentView.systemLayoutSizeFitting(layoutAttributes.size)
        var frame = layoutAttributes.frame
        
        frame.size.height = ceil(size.height)
        layoutAttributes.frame = frame
        
        return layoutAttributes
    }
    
    func setup() {
        setupSubViews()
    }
}

private extension HomeCollectionViewCell {
    func setupSubViews() {
        contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24.0)
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview()
        }
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.top.leading.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
    
    func setTitleData(with data: Title) {
        titleLabel.text = data.title
    }
}
