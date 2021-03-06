//  Created by Phillipus on 20/09/2013.
//  Copyright (c) 2013 Dada Beatnik. All rights reserved.
//

#import "CustomUnwindSegue.h"

@implementation CustomUnwindSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    UIViewController *destinationViewController = self.destinationViewController;
    
    [destinationViewController.view removeFromSuperview]; // remove from temp super view
    [sourceViewController dismissViewControllerAnimated:NO completion:NULL]; // dismiss VC
}

@end
