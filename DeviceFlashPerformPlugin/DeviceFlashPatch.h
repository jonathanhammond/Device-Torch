//
//  DeviceFlashPatch.h
//  DeviceFlash
//
//  Created by Jon Hammond on 10/12/2015.
//  Copyright © 2015 Jon Hammond. All rights reserved.
//

#import <Performer/Performer.h>
#import <AVFoundation/AVFoundation.h>

@interface DeviceFlashPatch : PMRPatch

@property (nonatomic, readonly) PMRPrimitiveInputPort *Enable;
@property (nonatomic, readonly) PMRPrimitiveInputPort *torchBrightness;

@end
