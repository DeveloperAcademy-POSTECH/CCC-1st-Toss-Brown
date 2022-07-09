//
//  ViewModel.swift
//  TossClone
//
//  Created by 이지수 on 2022/06/30.
//

// ref: https://github.com/DeveloperAcademy-POSTECH/CCC-1st-Toss-Curry/pull/1
import UIKit

struct TossData {
    let cellType: HomeCellType
    let cellList: [HomeCellList]
}

enum HomeCellType {
    case tossBank
    case assets
    case consumption
    
    var cellName: String {
        switch self {
        case .tossBank:
            return "토스뱅크"
        case .assets:
            return "자산"
        case .consumption:
            return "소비"
        }
    }
    
    var arrowImage: UIImage {
        switch self {
        case .consumption:
            return UIImage() // 얘만 화살표 없음
        default:
            return UIImage(systemName: "chevron.right", withConfiguration: UIImage.SymbolConfiguration(pointSize: 16.0, weight: .bold))?.withTintColor(.gray) ?? UIImage()
        }
    }
}

struct HomeCellList {
    let image: String
    let subTitle: String
    let title: String
}

// MARK: - dummy data
let tossBankRow = HomeCellList(image: "tossbankAds", subTitle: "일 복리 효과를 누릴 수 있어요", title: "눌러서 매일 이자 받기")
let assetsRow1 = HomeCellList(image: "tossbank", subTitle: "토스뱅크 통장", title: "150,000원")
let assetsRow2 = HomeCellList(image: "shinhan", subTitle: "신한은행 계좌", title: "? 원")
let assetsRow3 = HomeCellList(image: "hana", subTitle: "하나은행 계좌", title: "? 원")
let assetsRow4 = HomeCellList(image: "toss", subTitle: "투자·토스증권 계좌", title: "100,000원")
let consumptionRow = HomeCellList(image: "card", subTitle: "이번 달 쓴 금액", title: "30,000원")

let tossCellData = TossData(cellType: .tossBank, cellList: [tossBankRow])
let assetsCellData = TossData(cellType: .assets, cellList: [assetsRow1, assetsRow2, assetsRow3, assetsRow4])
let consumptionCellData = TossData(cellType: .consumption, cellList: [consumptionRow])

let dummyData = [tossCellData, assetsCellData, consumptionCellData]
