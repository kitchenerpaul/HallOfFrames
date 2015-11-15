//
//  Picture.m
//  HallOfFramesTest
//
//  Created by Paul Kitchener on 10/25/15.
//  Copyright © 2015 Paul Kitchener. All rights reserved.
//

#import "Picture.h"

@implementation Picture

-(instancetype)initWithImage:(UIImage *)image andColor:(UIColor *)color {
    self = [super init];

    if (self) {
        self.image = image;
        self.color = color;
    }
    return self;
}

@end
