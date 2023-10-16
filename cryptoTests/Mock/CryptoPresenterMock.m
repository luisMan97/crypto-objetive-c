//
//  CryptoPresenterMock.m
//  cryptoTests
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import "CryptoPresenterMock.h"

@implementation CryptoPresenterMock

- (void)attachView:(id<CryptoViewProtocol>)view {
    self.view = view;
}

- (void)fetchCryptoData {
    self.fetchCryptoDataCalled = YES;
}

@end
