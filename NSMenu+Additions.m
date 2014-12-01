
#import "NSMenu+Additions.h"

@implementation NSMenu (Additions)

- (void) setAllItemsEnabled:(BOOL) enabled; {
	NSArray * items = self.itemArray;
	for(NSMenuItem * item in items) {
		if(item.isSeparatorItem) {
			continue;
		}
		[item setEnabled:enabled];
	}
}

- (void) setEnabled:(BOOL) enabled forItemsWithTagsInRange:(NSRange) range; {
	NSArray * items = self.itemArray;
	for(NSMenuItem * item in items) {
		if(item.tag >= range.location && item.tag < range.location+range.length) {
			[item setEnabled:enabled];
		}
	}
}

@end
