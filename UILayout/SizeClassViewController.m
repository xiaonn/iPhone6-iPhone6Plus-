//
//  SizeClassViewController.m
//  UILayout
//
//  Created by 李帅 on 14-10-14.
//  Copyright (c) 2014年 李帅. All rights reserved.
//

#import "SizeClassViewController.h"

@interface SizeClassViewController ()

@end

@implementation SizeClassViewController

/**!
 第二种:通过autolayout + sizeClass + autosizing 进行适配
 适配方法:结合使用autolayout以及sizeClass对UI视图单元的父子关系,兄弟关系进行全方位的调整,调整精度高,不仅能满足一个view的位置尺寸的变化依据还能对这些依据加以不同的优先级,先满足什么条件,在满足什么条件,对于重要的位置尺寸可以优先保证。
 优点:可针对所有apple设备进行适配, 可能是未来适配的方向
 缺点:上手难度大, 复杂视图很难应付
 
 备注:当前sizeClass + autolayout均是在xib中进行配置的, 应该也可以使用代码进行控制(未做调研), 但是代码量将会非常的大, 需针对每一个collection的需求单独进行判断并在里面加上autolayout的代码
 */

@end
