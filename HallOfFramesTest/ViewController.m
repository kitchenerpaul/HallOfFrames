//
//  ViewController.m
//  HallOfFramesTest
//
//  Created by Paul Kitchener on 10/25/15.
//  Copyright © 2015 Paul Kitchener. All rights reserved.
//

#import "ViewController.h"
#import "Picture.h"
#import "PictureCollectionViewCell.h"
#import "CustomView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate, CustomViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property NSMutableArray *pictures;
@property NSIndexPath *selectedPath;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self fillPicturesArray];

}

-(void)fillPicturesArray {
    Picture *picture1 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"russ"] andColor:[UIColor grayColor]];
    Picture *picture2 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"mjkobe"] andColor:[UIColor grayColor]];
    Picture *picture3 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"harden"] andColor:[UIColor grayColor]];
    Picture *picture4 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"lebron"] andColor:[UIColor grayColor]];
    Picture *picture5 = [[Picture alloc] initWithImage:[UIImage imageNamed:@"steph"] andColor:[UIColor grayColor]];

    self.pictures = [[NSMutableArray alloc] initWithObjects:picture1, picture2, picture3, picture4, picture5, nil];
}

-(void)customView:(CustomView *)view updateForButton:(UIButton *)button {
    Picture *picture = [self.pictures objectAtIndex:self.selectedPath.row];
    picture.color = button.backgroundColor;
    PictureCollectionViewCell *cell = (PictureCollectionViewCell *)[self.collectionView cellForItemAtIndexPath:self.selectedPath];
    cell.backgroundColor = picture.color;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {

    self.selectedPath = indexPath;

    CustomView *customView = [[[NSBundle mainBundle] loadNibNamed:@"CustomizationView" owner:self options:nil] objectAtIndex:0];

    customView.frame = self.view.frame;
    customView.delegate = self;

    [self.view addSubview:customView];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.pictures.count;
}

-(PictureCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    PictureCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PictureCollectionViewCell" forIndexPath:indexPath];
    Picture *picture = [self.pictures objectAtIndex:indexPath.row];

    cell.imageView.image = picture.image;
    cell.backgroundColor = picture.color;
    
    return cell;
}


@end
