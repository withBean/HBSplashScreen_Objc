//
//  HBSplashScreenController.m
//  HBSplashScreen_Objc
//
//  Created by Beans on 16/6/26.
//  Copyright © 2016年 iceWorks. All rights reserved.
//

#import "HBSplashScreenController.h"
#import "HBSplashView.h"

#define kScreenWidth  [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kSplashViewWH 100

@interface HBSplashScreenController ()

@property (nonatomic, strong) HBSplashView *splashView;

@end

@implementation HBSplashScreenController

//- (HBSplashView *)splashView {
//    if (!_splashView) {
//        _splashView = [[HBSplashView alloc] initWithFrame:CGRectMake((kScreenWidth - kSplashViewWH) / 0.5, (kScreenHeight - kSplashViewWH) * 0.5, kSplashViewWH, kSplashViewWH)];
//        [self.view addSubview:_splashView];
//    }
//    return _splashView;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];

    [self setupSplashView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)setupSplashView {
    _splashView = [[HBSplashView alloc] initWithFrame:CGRectMake((kScreenWidth - kSplashViewWH) * 0.5, (kScreenHeight - kSplashViewWH) * 0.5, kSplashViewWH, kSplashViewWH)];
    [self.view addSubview:_splashView];
}

@end
