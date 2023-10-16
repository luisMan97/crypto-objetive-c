//
//  CryptoServiceMock.h
//  cryptoTests
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import "CryptoService.h"
#import "CryptoServiceProtocol.h"

@interface CryptoServiceMock : NSObject <CryptoServiceProtocol>
@property (nonatomic, strong) NSArray<Crypto *> *fakeCryptoData;
@end
