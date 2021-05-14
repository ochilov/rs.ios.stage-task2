#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
	UInt8 reversed = 0;
	for (UInt8 i = 0, bitsCount = 8; i < bitsCount; i++) {
		if (n & (1 << i)) {
			reversed |= 1 << (bitsCount-i-1);
		}
	}
	return reversed;
}
