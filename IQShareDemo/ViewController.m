//
//  ViewController.m
//  IQShareDemo
//
//  Created by lobster on 2019/7/9.
//  Copyright © 2019 lobster. All rights reserved.
//

#import "ViewController.h"
#import "IQShare.h"

@interface ViewController ()
@property (nonatomic, copy) void(^MyBlock)(void);
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    IQShareTextObject *txt = [[IQShareTextObject alloc] init];
    txt.text = @"分享文本";
    [[IQShare defaultShare] shareToPlatform:IQSharePlatformQQ messageObject:txt completion:^(IQShareResponse * _Nonnull response) {
        
    }];
    
    self.MyBlock = ^{
        NSLog(@"%@", self);
    };
    
    // 我在这里添加了注释
    
    self.MyBlock = ^{
        self.MyBlock();
    };
    
    // 测试下sonar
    self.MyBlock = [^{
        self.MyBlock();
    } copy];
    
    self.MyBlock = [^{
        self.MyBlock();
    } mutableCopy];
    
    // Do any additional setup after loading the view.
}


@end
