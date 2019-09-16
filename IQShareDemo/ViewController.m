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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    IQShareTextObject *txt = [[IQShareTextObject alloc] init];
    txt.text = @"分享文本";
    [[IQShare defaultShare] shareToPlatform:IQSharePlatformQQ messageObject:txt completion:^(IQShareResponse * _Nonnull response) {
        
    }];
    // Do any additional setup after loading the view.
}


@end
