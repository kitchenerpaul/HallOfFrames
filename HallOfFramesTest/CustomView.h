//
//  CustomView.h
//  HallOfFramesTest
//
//  Created by Paul Kitchener on 10/25/15.
//  Copyright © 2015 Paul Kitchener. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomView;

@protocol CustomViewDelegate <NSObject>

-(void)customView:(CustomView *)view updateForButton:(UIButton *)button;

@end

@interface CustomView : UIView

@property (nonatomic, assign) id<CustomViewDelegate> delegate;

@end
