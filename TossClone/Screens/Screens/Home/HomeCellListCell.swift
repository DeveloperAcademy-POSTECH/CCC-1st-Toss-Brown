//
//  HomeCellListCell.swift
//  TossClone
//
//  Created by LeeJiSoo on 2022/07/09.
//

import UIKit

import SnapKit

class HomeCellListCell: UITableViewCell {
    var cellList: HomeCellListData?
    var type: TossData?
    
    // MARK: - properties
    private lazy var listImageView: UIImageView = {
        $0.image = UIImage(named: cellList?.image ?? "xmark.circle")
        $0.contentMode = .scaleToFill
        return $0
    }(UIImageView())
    private lazy var subTitle: UILabel = {
        $0.text = cellList?.subTitle
        $0.textColor = .darkGray
        $0.font = .systemFont(ofSize: 14.0)
        return $0
    }(UILabel())
    private lazy var title: UILabel = {
        $0.text = cellList?.title
        $0.font = .systemFont(ofSize: 18.0)
        return $0
    }(UILabel())
    private lazy var sendButton: UIButton = {
        $0.setTitle("송금", for: .normal)
        $0.setTitleColor(.darkGray, for: .normal)
        $0.layer.cornerRadius = 5.0
        $0.backgroundColor = .gray
        return $0
    }(UIButton())
    private lazy var historyButton: UIButton = {
        $0.setTitle("내역", for: .normal)
        $0.setTitleColor(.darkGray, for: .normal)
        $0.layer.cornerRadius = 5.0
        $0.backgroundColor = .gray
        return $0
    }(UIButton())
    
    // MARK: - func
    
    func setup(row: HomeCellListData) {
        setupViews()
    }
    
}
