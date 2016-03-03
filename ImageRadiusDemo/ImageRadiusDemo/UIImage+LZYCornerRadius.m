//
//  UIImage+LZYCornerRadius.m
//  ImageRadiusDemo
//
//  Created by lynulzy on 3/3/16.
//  Copyright © 2016 lynulzy. All rights reserved.
//

#import "UIImage+LZYCornerRadius.h"

@implementation UIImage (LZYCornerRadius)
- (UIImage *)lzyCornerRadius:(CGFloat) radius size:(CGSize) sizeToFit {
    CGRect rect = CGRectMake(0, 0, sizeToFit.width, sizeToFit.height);
    
    UIGraphicsBeginImageContextWithOptions(sizeToFit, NO, [UIScreen mainScreen].scale);
    CGContextAddPath(UIGraphicsGetCurrentContext(), [UIBezierPath bezierPathWithRoundedRect:rect
                                                                          byRoundingCorners:UIRectCornerAllCorners
                                                                                cornerRadii:CGSizeMake(radius, radius)].CGPath);
    CGContextClip(UIGraphicsGetCurrentContext());
    [self drawInRect:rect];
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    UIImage *resImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resImage;
}
@end
