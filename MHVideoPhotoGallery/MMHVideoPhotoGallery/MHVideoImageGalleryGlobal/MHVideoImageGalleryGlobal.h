
#import <CoreMedia/CoreMedia.h>
#import <AVFoundation/AVFoundation.h>
#import <ImageIO/ImageIO.h>
#import <MediaPlayer/MediaPlayer.h>
#import <QuartzCore/QuartzCore.h>
#import "SDImageCache.h"

#import "AnimatorShowDetailForDismissMHGallery.h"
#import "AnimatorShowDetailForPresentingMHGallery.h"

typedef NS_ENUM(NSUInteger, MHImageGeneration) {
    MHImageGenerationStart,
    MHImageGenerationMiddle,
    MHImageGenerationEnd
};

typedef NS_ENUM(NSUInteger, MHGalleryTheme) {
    MHGalleryThemeBlack,
    MHGalleryThemeWhite
};

typedef NS_ENUM(NSUInteger, MHGalleryType) {
    MHGalleryTypeImage,
    MHGalleryTypeVideo
};

typedef NS_ENUM(NSUInteger, MHGalleryViewMode) {
    MHGalleryViewModeGridView,
    MHGalleryViewModeList
};

@interface MHGalleryItem : NSObject
@property (nonatomic, strong) NSString *urlString;
@property (nonatomic) MHGalleryType galleryType;
@property (nonatomic,strong) NSString *description;
@property (nonatomic,strong) NSString *title;

- (id)initWithURL:(NSString*)urlString
      galleryType:(MHGalleryType)galleryType;

@end


@interface MHGallerySharedManager : NSObject
@property (nonatomic,strong) NSArray *galleryItems;

+ (MHGallerySharedManager *)sharedManager;

-(void)startDownloadingThumbImage:(NSString*)urlString
                          forSize:(CGSize)size
                       atDuration:(MHImageGeneration)duration
                     successBlock:(void (^)(UIImage *image,NSUInteger videoDuration))succeedBlock;

- (UIImage *)imageByRenderingView:(id)view;

-(void)presentMHGalleryWithItems:(NSArray*)galleryItems
                        forIndex:(NSInteger)index
        andCurrentViewController:(id)viewcontroller
                  finishCallback:(void(^)(NSInteger pageIndex)
                                  )FinishBlock
        withImageViewTransiation:(BOOL)animated;



@end