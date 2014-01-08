//
//  ExampleViewController.h
//  MHVideoPhotoGallery
//
//  Created by Mario Hahn on 30.09.13.
//  Copyright (c) 2013 Mario Hahn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import  "MHGalleryCells.h"
#import "AnimatorShowDetailForPresentingMHGallery.h"
#import "AnimatorShowDetailForDismissMHGallery.h"

@interface UINavigationController (Rotation)
@end

@interface ExampleViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegate,UIViewControllerTransitioningDelegate>
@property (strong,nonatomic) IBOutlet UITableView *tableView;
@end
