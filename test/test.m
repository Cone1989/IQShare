//
//  test.m
//  test
//
//  Created by Ryan Lee on 2024/12/2.
//  Copyright © 2024 lobster. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "IQShare.h"

@interface test : XCTestCase

@end

@implementation test

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPlatformInstallState {
    BOOL QQ_isInstall = [IQShare isPlatformInstall:IQSharePlatformQQ];
    XCTAssertFalse(QQ_isInstall, "模拟器没有安装QQ，应该返回NO，这里返回了YES。");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
