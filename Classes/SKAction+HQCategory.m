//
//  SKAction+HQCategory.m
//  BowmastersDemo
//
//  Created by 刘欢庆 on 2017/9/13.
//  Copyright © 2017年 刘欢庆. All rights reserved.
//

#import "SKAction+HQCategory.h"

@implementation SKAction (HQCategory)
+ (SKAction *)shake:(CGFloat)duration strength:(CGFloat)strength
{
    NSInteger numberOfShakes = duration / 0.04;
    CGFloat randx = 0;
    CGFloat randy = 0;
    NSMutableArray *actionsArray = [NSMutableArray arrayWithCapacity:numberOfShakes * 2];
    for (int i = 0; i < numberOfShakes; i++)
    {
        randx = arc4random_uniform(strength * 2) - strength;
        randy = arc4random_uniform(strength * 2) - strength;
        SKAction *shakeAction = [SKAction moveByX:randx y:randy duration:0.02];
        [actionsArray addObject:shakeAction];
        [actionsArray addObject:shakeAction.reversedAction];
    }
    
    return [SKAction sequence:actionsArray];
}
@end
