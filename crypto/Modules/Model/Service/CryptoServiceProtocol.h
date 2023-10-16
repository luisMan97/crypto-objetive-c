//
//  CryptoServiceProtocol.h
//  crypto
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

@protocol CryptoServiceProtocol <NSObject>

- (void)fetchCryptoDataWithCompletion:(void (^)(NSArray<Crypto *> *cryptoList, NSError *error))completion;

@end
