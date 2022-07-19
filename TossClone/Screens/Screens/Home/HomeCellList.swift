//
//  HomeCellList.swift
//  TossClone
//
//  Created by LeeJiSoo on 2022/07/09.
//

import UIKit

class HomeCellList: UIView {
    var cellList: [HomeCellListData]
    
    // MARK: - properties
    
    private lazy var cellTableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.rowHeight = 70
        tableView.separatorStyle = .none
        tableView.separatorInset = UIEdgeInsets(top: 5.0, left: 24.0, bottom: 5.0, right: 24.0)
        tableView.layer.cornerRadius = 20
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(HomeCellListCell.self, forCellReuseIdentifier: "HomeCellListCell")
        return tableView
    }()
    
    // MARK: - init
    
    init(frame: CGRect, list: [HomeCellListData]) {
        cellList = list
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeCellList: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row) touched")
    }
    
}

extension HomeCellList: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cellList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCellListCell", for: indexPath) as? HomeCellListCell
        cell?.setup(row: cellList[indexPath.row])
        return cell ?? UITableViewCell()
    }
}

extension HomeCellList {
    private func setupViews() {
        addSubview(cellTableView)
        cellTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
            $0.height.equalTo(HomeCellListCell.height * CGFloat(cellList.count))
        }
    }
}
