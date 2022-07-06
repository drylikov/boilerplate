//
//	Issues.swift
//
//	Create by Leo on 6/3/2018

import Foundation

struct Issues : Codable {
	
    let title : String?
	let user : User?

	enum CodingKeys: String, CodingKey {
		case title = "title"
		case user = "user"
	}

    init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		user = try values.decodeIfPresent(User.self, forKey: .user)
	}

}
