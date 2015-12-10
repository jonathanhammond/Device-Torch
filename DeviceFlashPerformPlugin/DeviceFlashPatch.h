//
//  DeviceFlashPatch.h
//  DeviceFlash
//
//  Created by Jon Hammond on 10/12/2015.
//  Copyright © 2015 Jon Hammond. All rights reserved.
//

#import <Performer/Performer.h>

@interface DeviceFlashPatch : PMRPatch

@property (nonatomic, readonly) PMRPrimitiveInputPort *onOffInput;
@property (nonatomic, readonly) PMRPrimitiveOutputPort *colorOutput;

@end
