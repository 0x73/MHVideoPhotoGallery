//
//  ExampleViewControllerImageView.m
//  MHVideoPhotoGallery
//
//  Created by Mario Hahn on 14.01.14.
//  Copyright (c) 2014 Mario Hahn. All rights reserved.
//

#import "ExampleViewControllerImageView.h"

@interface ExampleViewControllerImageView ()
@property(nonatomic,strong)NSArray *galleryDataSource;
@property(nonatomic) NSInteger currentIndex;

@end

@implementation ExampleViewControllerImageView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"ImageView";
    
    self.currentIndex =0;
    
    MHGalleryItem *item0 = [[MHGalleryItem alloc]initWithURL:@"https://dl.dropboxusercontent.com/u/17911939/UIViewios7.png"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item1 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/reminders_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item2 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/videos_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item3 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/keynote_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item4 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/iphoto_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item5 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/imovie_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item6 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/iphone/shared/built-in-apps/images/facetime_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item7 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/siri_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item8 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/photos_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item9 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/ibooks_screen_2x.jpg"
                                                 galleryType:MHGalleryTypeImage];
    MHGalleryItem *item10 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/facetime_screen_2x.jpg"
                                                  galleryType:MHGalleryTypeImage];
    MHGalleryItem *item11 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/itunesstore_screen_2x.jpg"
                                                  galleryType:MHGalleryTypeImage];
    MHGalleryItem *item12 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/appstore_screen_2x.jpg"
                                                  galleryType:MHGalleryTypeImage];
    MHGalleryItem *item13 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/garageband_screen_2x.jpg"
                                                  galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *item14 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/built-in-apps/images/safari_screen_2x.jpg"
                                                  galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *item15 = [[MHGalleryItem alloc]initWithURL:@"http://mcms.tailored-apps.com/videos/42/1389279847huhe_Thema.mp4"
                                                  galleryType:MHGalleryTypeVideo];
    
    MHGalleryItem *item16 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/media/us/iphone-5c/2013/10ba527a-1a10-3f70-aae814f8/feature/iphone5c-feature-cc-us-20131003_r848-9dwc.mov?width=848&height=480"
                                                  galleryType:MHGalleryTypeVideo];
    
    MHGalleryItem *item17 = [[MHGalleryItem alloc]initWithURL:@"http://store.storeimages.cdn-apple.com/3769/as-images.apple.com/is/image/AppleInc/H4825_FV2?wid=1204&hei=306&fmt=jpeg&qlt=95&op_sharpen=0&resMode=bicub&op_usm=0.5,0.5,0,0&iccEmbed=0&layer=comp&.v=1367279419213"
                                                  galleryType:MHGalleryTypeImage];
    
    MHGalleryItem *item18 = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/media/us/ipad-air/2013/0be12b9f-265c-474c-a0cc-d3c4c304c031/feature/ipadair-feature-cc-us-20131114_r848-9dwc.mov?width=848&height=480"
                                                  galleryType:MHGalleryTypeVideo];
    
    
    
    MHGalleryItem *errorImage = [[MHGalleryItem alloc]initWithURL:@"http://images.apple.com/ipad-air/bui"
                                                      galleryType:MHGalleryTypeImage];
    
    item0.description = @"MHValidation Screenshot";
    item1.description = @"App Store App Screenshot from iOS7";
    item2.description = @"Calendar App Screenshot from iOS7";
    item3.description = @"Camera App Screenshot from iOS7";
    item4.description = @"Clock App Screenshot from iOS7";
    item5.description = @"Compass App Screenshot from iOS7";
    item6.description = @"Gamecenter App Screenshot from iOS7";
    
    
    self.galleryDataSource = @[item0,item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13,item14,item15,item16,item17,item18,errorImage];
    
    [self.iv setImageWithURL:[NSURL URLWithString:item0.urlString]];
    [self.iv setUserInteractionEnabled:YES];
    [self.iv addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(imageTapped)]];
}



-(void)imageTapped{
    [MHGallerySharedManager sharedManager].ivForPresentingAndDismissingMHGallery = self.iv;
    
    NSArray *galleryData = self.galleryDataSource;
    
    [self presentMHGalleryWithItems:galleryData
                           forIndex:self.currentIndex
                     finishCallback:^(UINavigationController *galleryNavMH, NSInteger pageIndex, UIImage *image) {
                         self.currentIndex = pageIndex;
                         self.iv.image = image;
                         [MHGallerySharedManager sharedManager].ivForPresentingAndDismissingMHGallery = self.iv;
                         [galleryNavMH dismissViewControllerAnimated:YES completion:nil];
                     } customAnimationFromImage:YES];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
