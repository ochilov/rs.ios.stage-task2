#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
	if (!numbersArray.count) {
		return @"";
	}
	UInt8 ip[4] = {0};
	for (NSUInteger i = 0, cnt = sizeof(ip)/sizeof(ip[0]); i < cnt; i++) {
		if (i >= numbersArray.count) {
			break;
		}
		NSInteger num = ((NSNumber *)[numbersArray objectAtIndex:i]).integerValue;
		if (num < 0) {
			return @"Negative numbers are not valid for input.";
		}
		if (num > 255) {
			return @"The numbers in the input array can be in the range from 0 to 255.";
		}
		ip[i] = (UInt8)num;
	}
	return [NSString stringWithFormat:@"%d.%d.%d.%d", ip[0], ip[1], ip[2], ip[3]];
}

@end
