//
//  UIImage+MPImageNamedNilCheck.m
//
//  Created by Christopher Bowns on 5/6/12.
//  Copyright (c) 2012 Mechanical Pants Software. All rights reserved.
//

#import "UIImage+MPImageNamedNilCheck.h"

@implementation UIImage (MPImageNamedNilCheck)

+ (UIImage *)imageNamedWithNilCheck:(NSString *)name;// load from main bundle with a nil check.
{
    UIImage *image = [UIImage imageNamed:name];
    @try {
        if (image == nil) {
            NSLog(@"%s nil image returned from [UIImage imageNamed:@\"%@\"]", __func__, name);
#if UIIMAGE_IMAGENAMED_NILCHECK
            [NSException raise:@"Nil image returned from +imageNamed:" format:@"Image named “%@” was not found.", name];
#endif
        }
    }
    @catch (NSException *exception) {
        // Good work.
    }
    return image;
}

@end
