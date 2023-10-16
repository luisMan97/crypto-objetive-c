//
//  CryptoServiceMock.m
//  cryptoTests
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import "CryptoServiceMock.h"

@implementation CryptoServiceMock

- (void)fetchCryptoDataWithCompletion:(void (^)(NSArray<Crypto *> *cryptoData, NSError *error))completion {
    if (self.fakeCryptoData) {
        completion(self.fakeCryptoData, nil);
    } else {
        NSError *error = [NSError errorWithDomain:@"CryptoServiceError" code:1 userInfo:nil];
        completion(nil, error);
    }
}

@end
