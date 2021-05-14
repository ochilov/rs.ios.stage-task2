#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
	NSMutableArray *numbers = [[NSMutableArray alloc] init];
	NSMutableArray *strings = [[NSMutableArray alloc] init];
	for (id item in array) {
		if (![item isKindOfClass:NSArray.class]) {
			return @[];
		}
		NSArray *subArray = (NSArray *)item;
		if (!subArray.count) {
			continue;
		}
		if ([subArray.firstObject isKindOfClass:NSNumber.class]) {
			[numbers addObjectsFromArray:subArray];
		} else if ([subArray.firstObject isKindOfClass:NSString.class]) {
			[strings addObjectsFromArray:subArray];
		}
	}
	[numbers sortUsingSelector:@selector(compare:)];
	[strings sortUsingSelector:@selector(compare:)];
	if (strings.count && numbers.count) {
		return @[ [numbers copy], [strings copy] ];
	}
	if (numbers.count) {
		return [numbers copy];
	}
	return [strings copy];
}

@end
