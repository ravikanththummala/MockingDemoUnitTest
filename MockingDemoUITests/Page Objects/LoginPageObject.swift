//
//  LoginPageObject.swift
//  MockingDemoUITests
//
//  Created by Ravikanth Thummala on 9/5/23.
//

import Foundation
import XCTest

class LoginPageObject {
    
    var app: XCUIApplication
    init(app: XCUIApplication) {
        self.app = app
    }
    
    var usernameTextfield:XCUIElement {
        app.textFields["usernameTextField"]
    }
    
    
    var passwordTextfield:XCUIElement {
        app.textFields["passwordTextfield"]
    }
    
    var loginButton:XCUIElement {
        app.buttons["loginButton"]
    }
    
    var messagetext:XCUIElement {
        app.staticTexts["messageText"]
    }
    
    var dashborad:XCUIElement {
        app.staticTexts["Dashboard"]
    }
}
