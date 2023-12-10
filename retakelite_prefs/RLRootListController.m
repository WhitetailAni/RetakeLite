#import <Foundation/Foundation.h>
#import "RLRootListController.h"

@implementation RLRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

-(void)hammerJBMe {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://hammerjb.me"] options:@{} completionHandler:nil];
}

-(void)action {
        
}

@end
