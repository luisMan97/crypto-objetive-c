//
//  CryptoViewProtocol.h
//  crypto
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import <Foundation/Foundation.h>
#import "Crypto.h"

@protocol CryptoViewProtocol <NSObject>

- (void)displayCryptoData:(NSArray<Crypto *> *)cryptoDataList;
- (void)displayError:(NSString *)errorMessage;

@end
