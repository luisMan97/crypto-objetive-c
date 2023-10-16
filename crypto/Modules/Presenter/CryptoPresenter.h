//
//  CryptoPresenter.h
//  Crypo
//
//  Created by Jorge Luis Rivera Ladino on 13/10/23.
//

#import <Foundation/Foundation.h>
#import "CryptoService.h"
#import "ViewController.h"
#import "CryptoViewProtocol.h"
#import "CryptoServiceProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface CryptoPresenter : NSObject

- (instancetype)initWithView:(id<CryptoViewProtocol>)view service:(id<CryptoServiceProtocol>)service;
- (void)fetchCryptoData;

@end

NS_ASSUME_NONNULL_END
