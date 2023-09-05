//
//  MockingDemoUITests.swift
//  MockingDemoUITests
//
//  Created by Ravikanth Thummala on 9/5/23.
//

import XCTest

class when_user_clicks_on_login_button: XCTestCase {
   
    private var app:XCUIApplication!
    private var loginPageObject:LoginPageObject!
    
    override  func setUp() {
        app = XCUIApplication()
        loginPageObject = LoginPageObject(app: app)
        continueAfterFailure = false
        app.launchEnvironment = ["ENV":"TEST"]
        app.launch()

    }
    
    func test_should_display_error_message_for_missing_required_fields(){
//
//        let usernameTextfield = loginPageObject.usernameTextfield
//        usernameTextfield.tap()
//        usernameTextfield.typeText("")
//        let passwordTextfield = loginPageObject.passwordTextfield
//        passwordTextfield.tap()
//        passwordTextfield.typeText("")
//
//        let loginButton = loginPageObject.loginButton
//        loginButton.tap()
//        let messageText = loginPageObject.messagetext
//
//        XCTAssertEqual(messageText.label, "Required fields are missing")
    }
    
    func test_navigate_to_dashboard_screen_when_authenticated(){
        let usernameTextfield = loginPageObject.usernameTextfield
        usernameTextfield.tap()
        
        usernameTextfield.typeText("JohnDoe")
        let passwordTextfield = loginPageObject.passwordTextfield
        passwordTextfield.tap()
        
        passwordTextfield.typeText("Password")
        
        let loginButton = loginPageObject.loginButton
        loginButton.tap()
        
        let dashBoardNavBarTitle = loginPageObject.dashborad
        XCTAssertTrue(dashBoardNavBarTitle.waitForExistence(timeout: 0.5))
        
    }
    
    func test_should_display_error_message_for_invalid_credentails() {
        let usernameTextfield = loginPageObject.usernameTextfield
        usernameTextfield.tap()
        usernameTextfield.typeText("JohnDoe")
        
        let passwordTextfield = loginPageObject.passwordTextfield
        passwordTextfield.tap()
        passwordTextfield.typeText("WPassword")
        
        let loginButton = loginPageObject.loginButton
        loginButton.tap()
        
        
        let messageText = loginPageObject.messagetext
        XCTAssertEqual(messageText.label, "Invalid credentials")

        
    }
    
    func test_record(){
        
        let collectionViewsQuery = XCUIApplication().collectionViews
        let usernametextfieldTextField = collectionViewsQuery/*@START_MENU_TOKEN@*/.textFields["usernameTextField"]/*[[".cells",".textFields[\"User name\"]",".textFields[\"usernameTextField\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        usernametextfieldTextField.tap()
        
        let passwordtextfieldTextField = collectionViewsQuery/*@START_MENU_TOKEN@*/.textFields["passwordTextField"]/*[[".cells",".textFields[\"Password\"]",".textFields[\"passwordTextField\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        passwordtextfieldTextField.tap()
        
        let loginbuttonButton = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Login"]/*[[".cells",".buttons[\"Login\"]",".buttons[\"loginButton\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[1]]@END_MENU_TOKEN@*/
        loginbuttonButton.tap()
        usernametextfieldTextField.tap()

        loginbuttonButton.tap()
        
    }

}
