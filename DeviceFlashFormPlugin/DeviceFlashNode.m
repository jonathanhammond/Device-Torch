//
//  DeviceFlashNode.m
//  DeviceFlash
//
//  Created by Jon Hammond on 10/12/2015.
//  Copyright © 2015 Jon Hammond. All rights reserved.
//

#import "DeviceFlashNode.h"

@implementation DeviceFlashNode

+ (NSString *)defaultName {
    return @"DeviceFlash";
}

+ (NSString *)processClassName {
    return @"DeviceFlashPatch";
}

- (instancetype)init {
    if ((self = [super init]) != nil) {
        // Inputs
        [self addPort:[[FMRPrimitiveInputPort alloc] initWithName:@"On / Off" uniqueKey:@"Form.onOffInput" defaultValue:[PMRPrimitive primitiveWithBooleanValue:NO]] portGroup:nil];
        
        // Outputs
        [self addPort:[[FMRPrimitiveOutputPort alloc] initWithName:@"Color" uniqueKey:@"Form.colorOutput"] portGroup:nil];
    }
    return self;
}

- (void)dealloc {
    
}

@end
