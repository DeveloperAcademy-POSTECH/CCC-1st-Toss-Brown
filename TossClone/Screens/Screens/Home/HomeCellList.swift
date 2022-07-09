//
//  HomeCellList.swift
//  TossClone
//
//  Created by LeeJiSoo on 2022/07/09.
//

import UIKit

class HomeCellList: UIView {
    var cellList: HomeCellListData
    
    // MARK: - properties
    
    private lazy var cellTableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.rowHeight = 70
        tableView.separatorStyle = .none
        tableView.separatorInset = UIEdgeInsets(top: 7.0, left: 24.0, bottom: 7.0, right: 24.0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HomeCellListCell.self, forCellReuseIdentifier: "HomeCellListCell")
        return tableView
    }()
    
    // MARK: - init
    
    init(frame: CGRect, list: [HomeCellListData]) {
        cellList = list
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
