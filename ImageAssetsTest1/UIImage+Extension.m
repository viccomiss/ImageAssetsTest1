//
//  UIImage+Extension.m
//  ImageAssetsTest1
//
//  Created by yangming on 2019/9/10.
//  Copyright © 2019 yangming. All rights reserved.
//

#import "UIImage+Extension.h"

@implementation UIImage (Extension)

+ (UIImage *)bundleImageNamed:(NSString *)imageName{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ImageAssetsBundle" ofType:@"bundle"];
    return [UIImage imageNamed:imageName inBundle:[NSBundle bundleWithPath:path] compatibleWithTraitCollection:nil];
}

@end
