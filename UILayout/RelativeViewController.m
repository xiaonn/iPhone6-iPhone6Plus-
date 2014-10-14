//
//  RelativeViewController.m
//  UILayout
//
//  Created by 李帅 on 14-10-14.
//  Copyright (c) 2014年 李帅. All rights reserved.
//

#import "RelativeViewController.h"

@interface RelativeViewController ()

@end

@implementation RelativeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self layout];
}

/**!
 第一种:根据不同尺寸,不同系统不同屏幕尺寸进行if判断适配,这是目前使用的适配方法。
 适配方法:所有的当前布局均修改为相对布局(根据父视图的边缘坐标进行适配,原点位置必须为相对的,视图尺寸可以为相对的也可以写死),可暂时解决当前的iphone6 iphone6 plus的适配问题
 优点:操作难度低，可直接上手
 可能出现的问题:适应性低,仅可针对几种设备进行适配,若推出其余尺寸设备需重新进行适配
 
 备注:pt大小: iphone6:375x667; 6+:414x736。另外由于6+出现后，分辨率达到了1:3,因此图片素材需要@3x.png,分辨率提高了1.5倍,需由美工提供
 */
- (void)layout{
    
    //尽量使用UIScreen来获取屏幕尺寸,xcode6中获取视图尺寸当前存在一些问题
    float width = [UIScreen mainScreen].bounds.size.width;
    float height = [UIScreen mainScreen].bounds.size.height;
    float buttonWidth = (width - 35)/2;
    
    CGRect buttonFrame = CGRectMake(self.view.frame.origin.x + 10, height - 49 - 40, buttonWidth, 30);
    CGRect cancelButtonFrame = CGRectMake(width - 10 - buttonWidth, height - 49 - 40, buttonWidth, 30);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = buttonFrame;
    button.backgroundColor = [UIColor greenColor];
    [button setTitle:@"确定" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeSystem];
    cancelButton.frame = cancelButtonFrame;
    cancelButton.backgroundColor = [UIColor greenColor];
    [cancelButton setTitle:@"取消" forState:UIControlStateNormal];
    [cancelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:cancelButton];
    
}

@end
