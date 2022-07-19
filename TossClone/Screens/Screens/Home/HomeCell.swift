//
//  HomeCell.swift
//  TossClone
//
//  Created by LeeJiSoo on 2022/07/09.
//

import UIKit

class HomeCell: UIView {
    var cellData: TossData
    
    // MARK: - properties
    
    private lazy var cellStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.spacing = 5.0
        let homeNameView = HomeCellName(frame: .zero, type: cellData.cellType)
        let homeListView = HomeCellList(frame: .zero, list: cellData.cellList)
        
        [homeNameView, homeListView].forEach { stackView.addArrangedSubview($0) }
        
        return stackView
    }()
    
    init(frame: CGRect, data: TossData) {
        self.cellData = data
        super.init(frame: frame)
        setupViews()
        self.layer.cornerRadius = 20
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeCell {
    func setupViews() {
        addSubview(cellStackView)
        cellStackView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
