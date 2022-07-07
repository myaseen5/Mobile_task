// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let loginModel = try? newJSONDecoder().decode(LoginModel.self, from: jsonData)

import Foundation

// MARK: - LoginModel
struct LoginModel: Codable {
    var error: Bool?
    var role, token: String?
    var expireAt, userID: Int?
    var message: String?

    enum CodingKeys: String, CodingKey {
        case error, role, token
        case expireAt = "expire_at"
        case userID = "user_id"
    }
}

