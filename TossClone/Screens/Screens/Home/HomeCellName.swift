//
//  HomeCellName.swift
//  TossClone
//
//  Created by LeeJiSoo on 2022/07/09.
//

import UIKit

import SnapKit

class HomeCellName: UIView {
    var cellType: HomeCellType
    
    // MARK: - properties
    
    private lazy var cellNamebutton: UIButton = {
        $0.addTarget(nil, action: #selector(tapCellType), for: .touchUpInside)
        return $0
    }(UIButton())
    private lazy var cellNameLabel: UILabel = {
        $0.text = cellType.cellName
        $0.font = .systemFont(ofSize: 22.0, weight: .bold)
        return $0
    }(UILabel())
    private lazy var arrowImage: UIImageView = {
        $0.image = cellType.arrowImage
        return $0
    }(UIImageView())
    
    // MARK: - init
    
    init(frame: CGRect, type: HomeCellType) {
        self.cellType = type
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - func
    
    @objc func tapCellType() {
        print("cell name을 터치했습니다.")
    }
}

extension HomeCellName {
    func setupViews() {
        [cellNamebutton, cellNameLabel, arrowImage].forEach { addSubview($0) }
        cellNamebutton.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        cellNameLabel.snp.makeConstraints {
            $0.top.left.right.bottom.equalToSuperview().inset(24.0)
        }
        arrowImage.snp.makeConstraints {
            $0.centerY.equalTo(cellNameLabel.snp.centerY)
            $0.trailing.equalToSuperview().inset(24.0)
        }
    }
}
