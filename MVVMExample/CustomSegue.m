//  Created by Phillipus on 19/09/2013.
//  Copyright (c) 2013 Dada Beatnik. All rights reserved.
//

#import "CustomSegue.h"

@implementation CustomSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    UIViewController *destinationViewController = self.destinationViewController;
    [destinationViewController.view removeFromSuperview]; // remove from temp super view
    [sourceViewController presentViewController:destinationViewController animated:NO completion:NULL];
}

@end
