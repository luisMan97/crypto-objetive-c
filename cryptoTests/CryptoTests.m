//
//  cryptoTests.m
//  cryptoTests
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import <XCTest/XCTest.h>
#import "Crypto.h"

@interface CryptoTests : XCTestCase
@property (nonatomic, strong) Crypto *crypto;
@end

@implementation CryptoTests

- (void)setUp {
    [super setUp];
    self.crypto = [[Crypto alloc] init];
}

- (void)tearDown {
    self.crypto = nil;
    [super tearDown];
}

- (void)testCryptoProperties {
    self.crypto.name = @"Bitcoin";
    self.crypto.symbol = @"BTC";
    self.crypto.price = @(50000);

    XCTAssertEqualObjects(self.crypto.name, @"Bitcoin", @"Error en el nombre de la criptomoneda");
    XCTAssertEqualObjects(self.crypto.symbol, @"BTC", @"Error en el símbolo de la criptomoneda");
    XCTAssertEqualObjects(self.crypto.price, @(50000), @"Error en el precio de la criptomoneda");
}

@end
