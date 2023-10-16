//
//  CryptoPresenterMock.h
//  cryptoTests
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import "CryptoPresenter.h"
#import "CryptoPresenterProtocol.h"

@interface CryptoPresenterMock : NSObject <CryptoPresenterProtocol>

@property (nonatomic, strong) id<CryptoViewProtocol> view;
@property (nonatomic, assign) BOOL fetchCryptoDataCalled;

- (void)attachView:(id<CryptoViewProtocol>)view;
- (void)fetchCryptoData;

@end
