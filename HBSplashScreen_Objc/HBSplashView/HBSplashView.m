//
//  HBSplashView.m
//  HBSplashScreen_Objc
//
//  Created by Beans on 16/6/26.
//  Copyright © 2016年 iceWorks. All rights reserved.
//

#import "HBSplashView.h"
#import "HBCircleLayer.h"

@interface HBSplashView ()

@property (nonatomic, strong) HBCircleLayer *circleLayer;

@end

@implementation HBSplashView

#pragma mark - lazy load

- (HBCircleLayer *)circleLayer {
    if (!_circleLayer) {
        _circleLayer = [[HBCircleLayer alloc] init];
    }
    return _circleLayer;
}

#pragma mark - init

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self addCircleLayer];
    }
    return self;
}

#pragma mark -

- (void)addCircleLayer {
    [self.layer addSublayer:self.circleLayer];
    [_circleLayer outspread];
    [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(test) userInfo:nil repeats:NO];
}

- (void)test {
    NSLog(@"test");
}

@end
