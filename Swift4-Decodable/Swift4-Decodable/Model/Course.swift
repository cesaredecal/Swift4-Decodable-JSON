//
//  Course.swift
//  Swift4-Decodable
//
//  Created by Cesare de Cal on 2/8/18.
//  Copyright © 2018 Cesare Gianfilippo Astianatte de Cal. All rights reserved.
//

import Foundation

struct Course: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
}
