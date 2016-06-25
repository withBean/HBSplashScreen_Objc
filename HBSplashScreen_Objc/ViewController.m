//
//  ViewController.m
//  HBSplashScreen_Objc
//
//  Created by Beans on 16/6/26.
//  Copyright © 2016年 iceWorks. All rights reserved.
//

/**
 1、先出来一个圆
 2、圆形在水平和竖直方向上被挤压，呈椭圆形状的一个过程，最后恢复成圆形
 3、圆形的左下角、右下角和顶部分别按顺序凸出一小部分
 4、圆和凸出部分形成的图形旋转一圈后变成三角形
 5、三角形的左边先后出来两条宽线，将三角形围在一个矩形中
 6、矩形由底部向上被波浪状填满
 7、被填满的矩形放大至全屏，弹出Welcome
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
