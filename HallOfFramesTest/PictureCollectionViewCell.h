//
//  PictureCollectionViewCell.h
//  HallOfFramesTest
//
//  Created by Paul Kitchener on 10/25/15.
//  Copyright © 2015 Paul Kitchener. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Picture.h"

@interface PictureCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property Picture *picture;

-(void) usePicture:(Picture *)picture;

@end
