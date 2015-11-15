//
//  CustomView.m
//  HallOfFramesTest
//
//  Created by Paul Kitchener on 10/25/15.
//  Copyright © 2015 Paul Kitchener. All rights reserved.
//

#import "CustomView.h"
#import "PictureCollectionViewCell.h"

@interface CustomView ()

@property (weak, nonatomic) IBOutlet UIButton *customColorButton;

@property float red;
@property float green;
@property float blue;

@end

@implementation CustomView


-(IBAction)onColorPressed:(UIButton *)button {
    [self.delegate customView:self updateForButton:button];
    [self removeFromSuperview];
}

-(IBAction)onBackgroundTapped:(UITapGestureRecognizer *)sender {
    [self removeFromSuperview];
}

-(IBAction)onSlidersAdjusted:(UISlider *)slider {

    switch (slider.tag) {
        case 1:
            self.red = slider.value;
            break;

        case 2:
            self.green = slider.value;
            break;

        case 3:
            self.blue = slider.value;
            break;

        default:
            break;
    }

    self.customColorButton.backgroundColor = [UIColor colorWithRed:self.red green:self.green blue:self.blue alpha:1.0];
    [self.delegate customView:self updateForButton:self.customColorButton];
}


@end
