//
//  SKAction+HQCategory.h
//  BowmastersDemo
//
//  Created by 刘欢庆 on 2017/9/13.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface SKAction (HQCategory)

/**
 * 抖动
 * duration:持续时间
 * strength:抖动幅度
 */
+ (SKAction *)shake:(CGFloat)duration strength:(CGFloat)strength;

@end
