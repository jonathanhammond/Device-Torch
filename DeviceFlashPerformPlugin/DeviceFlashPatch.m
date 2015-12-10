//
//  DeviceFlashPatch.m
//  DeviceFlash
//
//  Created by Jon Hammond on 10/12/2015.
//  Copyright © 2015 Jon Hammond. All rights reserved.
//

#import "DeviceFlashPatch.h"
#import <CoreMotion/CoreMotion.h>
#import <CoreMotion/CMLogItem.h>

@implementation DeviceFlashPatch {
    // Inputs
  //  BOOL _previousRefreshValue;
    
}

- (void)dealloc {
    
}

// We override isConsumerPatch because we want to process our refresh data signal even if none of the outputs are currently being used.
//- (BOOL)isConsumerPatch {
//    return YES;
//}


- (void)processPatchWithContext:(PMRProcessContext *)context {
    // Process Refresh
    BOOL enabled = _Enable.booleanValue;
    
    float brightness = _torchBrightness.numberValue;
    
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
  //  [device lockForConfiguration:nil];
  //  [device setTorchModeOnWithLevel:brightness error:(nil)];
    
    
    if (enabled == true)
    {
        [device lockForConfiguration:nil];
        //by these you can use Torch Flash Light..
        // [device setTorchModeOnWithLevel:0.25 error:(nil)];
        [device setTorchMode:AVCaptureTorchModeOn];  // use AVCaptureTorchModeOff to turn off
        [device setTorchModeOnWithLevel:brightness error:(nil)];
        [device unlockForConfiguration];
        
    }
    else {
        [device lockForConfiguration:nil];
        //by these you can use Torch Flash Light..
        //[device setTorchModeOnWithLevel:1.0 error:(nil)];
        [device setTorchMode:AVCaptureTorchModeOff];  // use AVCaptureTorchModeOff to turn off
        [device unlockForConfiguration];
    }
    
    
}

@end
