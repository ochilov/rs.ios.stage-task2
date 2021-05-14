#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
	NSInteger differsCount = 0;
	for (NSUInteger i = 0; i < array.count-1; i++) {
		NSNumber *a = [array objectAtIndex:i];
		for (NSUInteger j = i+1; j < array.count; j++) {
			NSNumber *b = [array objectAtIndex:j];
			// TODO: if numbers in array is not sorted - it is necessary to use abs in comparison
			if (b.integerValue - a.integerValue == number.integerValue) {
				differsCount++;
			}
		}
	}
    return differsCount;
}

@end
