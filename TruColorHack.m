//
//  TruColorHack.m
//  TruColor
//
//  Created by Earwin Burrfoot on 17/9/12.
//  Copyright (c) 2012 Wonderland. All rights reserved.
//

#import "TruColorHack.h"
#import "jrswizzle/JRSwizzle.h"

@implementation TruColorHack

+ (void) load {
	[NSClassFromString(@"TTView") jr_swizzleMethod:@selector(adjustedColorWithColor:withBackgroundColor:force:) withMethod:@selector(TrucolorHack_adjustedColorWithColor:withBackgroundColor:force:) error:NULL];
}

@end

@implementation NSView (TTView)

- (id)TrucolorHack_adjustedColorWithColor:(id)color withBackgroundColor:(id)background force:(BOOL)force {
    return color;
}

@end