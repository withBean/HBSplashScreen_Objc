//
//  HBCircleLayer.m
//  HBSplashScreen_Objc
//
//  Created by Beans on 16/6/26.
//  Copyright © 2016年 iceWorks. All rights reserved.
//

#import "HBCircleLayer.h"
#import <UIKit/UIKit.h>
#import "UIColor+HBHexString.h"

#define kAnimationBeginTime 0.0
#define kAnimationDuration  0.3

@interface HBCircleLayer ()

@property (nonatomic, strong) UIBezierPath *smallCircle;
@property (nonatomic, strong) UIBezierPath *largeCircle;
@property (nonatomic, strong) UIBezierPath *horizontalShift;
@property (nonatomic, strong) UIBezierPath *verticalShift;

@end

@implementation HBCircleLayer

#pragma mark - lazy load

- (UIBezierPath *)smallCircle {
    if (!_smallCircle) {
        _smallCircle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50.0, 50.0, 0.0, 0.0)];
    }
    return _smallCircle;
}

- (UIBezierPath *)largeCircle {
    if (!_largeCircle) {
        _largeCircle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(2.5, 17.5, 95.0, 95.0)];
    }
    return _largeCircle;
}

- (UIBezierPath *)horizontalShift {
    if (!_horizontalShift) {
        _horizontalShift = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(5.0, 20.0, 90.0, 90.0)];
    }
    return _horizontalShift;
}

- (UIBezierPath *)verticalShift {
    if (!_verticalShift) {
        _verticalShift = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(2.5, 20.0, 95.0, 90.0)];
    }
    return _verticalShift;
}

#pragma mark - init

- (instancetype)init {
    self = [super init];
    if (self) {
        // 初始显示小圆
        self.path = self.smallCircle.CGPath;
        self.fillColor = [UIColor colorWithHexString:@"#da70d6"].CGColor;   // Defaults to opaque & black
    }
    return self;
}

#pragma mark - methods

- (void)outspread {
    NSLog(@"outspread");
    CABasicAnimation *outSpreadAnim = [CABasicAnimation animationWithKeyPath:@"path"];
    outSpreadAnim.fromValue = (__bridge id _Nullable)(self.smallCircle.CGPath);
    outSpreadAnim.toValue = (__bridge id _Nullable)(self.largeCircle.CGPath);
    outSpreadAnim.duration = kAnimationDuration;
    outSpreadAnim.fillMode = kCAFillModeForwards;
    outSpreadAnim.removedOnCompletion = NO;
    [self addAnimation:outSpreadAnim forKey:nil];
}

- (void)quiverAnimation {

    CABasicAnimation *anim1 = [CABasicAnimation animationWithKeyPath:@"path"];
    anim1.fromValue = (__bridge id _Nullable)(_largeCircle.CGPath);
    anim1.toValue = (__bridge id _Nullable)(_verticalShift.CGPath);
    anim1.beginTime = kAnimationBeginTime;
    anim1.duration = kAnimationDuration;
}

- (void)shrink {

}

@end
