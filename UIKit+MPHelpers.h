//
//  UIKit+MPHelpers.h
//
//  Created by Christopher Bowns on 5/6/12.
//  Copyright (c) 2012 Mechanical Pants Software. All rights reserved.
//

#import <UIKit/UIKit.h>

// For our British friends:
@compatibility_alias UIColour UIColor;

@interface UIColor (MPColorRenaming)

+ (UIColor *)greyColor;

@end

@interface UIImage (MPImageNamedNilCheck)

// Throws and catches an exception when [UIImage imageNamed:name] returns nil.
// Turn on exception breakpoints to halt execution when this happens.
// Use #define UIIMAGE_IMAGENAMED_NILCHECK 0 to avoid throwing and catching exceptions.

+ (UIImage *)imageNamedWithNilCheck:(NSString *)name;// load from main bundle with a nil check.

@end

