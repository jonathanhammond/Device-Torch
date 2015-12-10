//
//  DeviceFlashPlugin.m
//  DeviceFlash
//
//  Created by Jon Hammond on 10/12/2015.
//  Copyright © 2015 Jon Hammond. All rights reserved.
//

#import "DeviceFlashPlugin.h"
#import "DeviceFlashNode.h"

@implementation DeviceFlashPlugin

+ (NSString *)name {
    return @"Device Flash";
}

+ (NSString *)description {
    return @"Created by Jon Hammond on 10/12/2015";
}

+ (NSArray *)nodeClasses {
    return @[[DeviceFlashNode class]];
}

@end
