//
//  Picture.h
//  HallOfFramesTest
//
//  Created by Paul Kitchener on 10/25/15.
//  Copyright © 2015 Paul Kitchener. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Picture : NSObject

@property UIImage *image;
@property UIColor *color;

-(instancetype)initWithImage:(UIImage *)image andColor:(UIColor *)color;

@end