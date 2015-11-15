//
//  PictureCollectionViewCell.m
//  HallOfFramesTest
//
//  Created by Paul Kitchener on 10/25/15.
//  Copyright © 2015 Paul Kitchener. All rights reserved.
//

#import "PictureCollectionViewCell.h"

@implementation PictureCollectionViewCell

-(void)usePicture:(Picture *)picture {
    self.imageView.image = picture.image;
    self.backgroundColor = picture.color;
}

@end
