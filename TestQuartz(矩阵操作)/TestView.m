

//
//  TestView.m
//  TestQuartz(矩阵操作)
//
//  Created by admin on 15-1-13.
//  Copyright (c) 2015年 ___CC___. All rights reserved.
//

#import "TestView.h"

@implementation TestView


-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


-(void)drawRect:(CGRect)rect
{
    
 //获取图形上下文
 CGContextRef ctx=UIGraphicsGetCurrentContext();
    
 //矩阵操作
 //注意点：设置矩阵操作必须要在添加绘图信息之前
 //平移，x方向移动50，y方向移动100
 //CGContextTranslateCTM(ctx, 50, 100);

 //注意点：设置矩阵操作必须要在添加绘图信息之前
 //缩放，x方向缩放0.5倍，y方向缩放1.5倍
 CGContextScaleCTM(ctx, 0.5, 1.5);
    
 //旋转45度
 //CGContextRotateCTM(ctx, M_PI_4);

 //绘图
 //画四边形
  //CGContextAddRect(ctx, CGRectMake(0, 0, 100, 100));

 //画一个圆
 CGContextAddEllipseInRect(ctx, CGRectMake(0, 0, 50, 50));
 [[UIColor greenColor] set];
 //渲染

 //CGContextStrokePath(ctx);
  CGContextFillPath(ctx);
    
}



@end
