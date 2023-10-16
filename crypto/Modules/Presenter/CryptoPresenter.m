//
//  CryptoPresenter.m
//  Crypo
//
//  Created by Jorge Luis Rivera Ladino on 13/10/23.
//

#import "CryptoPresenter.h"
#import "CryptoService.h"
#import "ViewController.h"
#import "Crypto.h"
#import "CryptoPresenterProtocol.h"
#import "CryptoServiceProtocol.h"

@interface CryptoPresenter () <CryptoPresenterProtocol>

@property (nonatomic, weak) id<CryptoViewProtocol> view;
@property (nonatomic, strong) CryptoService *service;

@end

@implementation CryptoPresenter

- (instancetype)initWithView:(id<CryptoViewProtocol>)view service:(id<CryptoServiceProtocol>)service {
    self = [super init];
    if (self) {
        _view = view;
        _service = service;
    }
    return self;
}

- (void)fetchCryptoData {
    [self.service fetchCryptoDataWithCompletion:^(NSArray<Crypto *> *cryptoList, NSError *error) {
        if (error) {
            [self.view displayError:@"Error fetching data"];
        } else {
            [self.view displayCryptoData:cryptoList];
        }
    }];
}

@end
