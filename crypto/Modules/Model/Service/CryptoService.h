//
//  CryptoService.h
//  Crypo
//
//  Created by Jorge Luis Rivera Ladino on 13/10/23.
//

#import <Foundation/Foundation.h>
#import "Crypto.h"
#import "CryptoServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface CryptoService : NSObject <CryptoServiceProtocol>

- (void)fetchCryptoDataWithCompletion:(void (^)(NSArray<Crypto *> *cryptoList, NSError *error))completion;

@end

NS_ASSUME_NONNULL_END
