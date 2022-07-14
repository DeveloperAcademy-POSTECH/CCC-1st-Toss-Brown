//
//  HomeCellListCell.swift
//  TossClone
//
//  Created by LeeJiSoo on 2022/07/09.
//

import UIKit

import SnapKit

class HomeCellListCell: UITableViewCell {
    var cellRow: HomeCellListData?
//    var type: TossData?
    static let height: CGFloat = 70.0
    
    // MARK: - properties
    private lazy var listImageView: UIImageView = {
        $0.image = UIImage(named: cellRow?.image ?? "xmark.circle")
        $0.contentMode = .scaleToFill
        $0.backgroundColor = .black
        return $0
    }(UIImageView())
    private lazy var subTitle: UILabel = {
        $0.text = cellRow?.subTitle
        $0.textColor = .darkGray
        $0.font = .systemFont(ofSize: 14.0)
        $0.backgroundColor = .green
        return $0
    }(UILabel())
    private lazy var title: UILabel = {
        $0.text = cellRow?.title
        $0.font = .systemFont(ofSize: 18.0)
        $0.backgroundColor = .blue
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
        cellRow = row
        setupViews()
    }
    
}

extension HomeCellListCell {
    func setupViews() {
        [listImageView, subTitle, title].forEach { addSubview($0) }
        listImageView.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(24.0)
            $0.width.height.equalTo(40.0)
            $0.top.equalToSuperview().inset(20.0)
            $0.bottom.equalToSuperview().inset(20.0)
        }
        subTitle.snp.makeConstraints {
            $0.leading.equalTo(listImageView.snp.trailing).offset(24.0)
            $0.top.equalTo(listImageView.snp.top)
            $0.trailing.equalToSuperview()
        }
        title.snp.makeConstraints {
            $0.top.equalTo(subTitle.snp.bottom).offset(5.0)
            $0.leading.equalTo(subTitle.snp.leading)
            $0.bottom.equalTo(listImageView.snp.bottom)
            $0.trailing.equalToSuperview()
        }
        
        switch cellRow?.cellType {
        case .account:
            setupSendButton()
        case .history:
            setupHistoryButton()
        default:
            return
        }
    }
    
    func setupSendButton() {
        addSubview(sendButton)
        sendButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(24.0)
            $0.centerY.equalTo(snp.centerY)
            $0.width.equalTo(50.0)
            $0.height.equalTo(30.0)
        }
    }
    
    func setupHistoryButton() {
        addSubview(historyButton)
        sendButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(24.0)
            $0.centerY.equalTo(snp.centerY)
            $0.width.equalTo(50.0)
            $0.height.equalTo(30.0)
        }
    }
}
