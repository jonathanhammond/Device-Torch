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
    return @"Device Flash";
}

+ (NSString *)processClassName {
    return @"DeviceFlashPatch";
}

- (instancetype)init {
    if ((self = [super init]) != nil) {
        // Inputs
        [self addPort:[[FMRPrimitiveInputPort alloc] initWithName:@"Enable" uniqueKey:@"Form.Enable" defaultValue:[PMRPrimitive primitiveWithBooleanValue:NO]] portGroup:nil];
        
        
        [self addPort:[[FMRPrimitiveInputPort alloc] initWithName:@"Brightness" uniqueKey:@"Form.torchBrightness" defaultValue:[PMRPrimitive primitiveWithNumberValue:0.5]] portGroup:nil];
        
        // Outputs
    }
    return self;
}

- (void)dealloc {
    
}

@end
