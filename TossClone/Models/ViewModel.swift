//
//  ViewModel.swift
//  TossClone
//
//  Created by 이지수 on 2022/06/30.
//

import UIKit

struct Title: Codable {
    var title: String
}

var titleData: [Title] = [
    Title(title: "토스뱅크"),
    Title(title: "자산"),
    Title(title: "소비")
]
