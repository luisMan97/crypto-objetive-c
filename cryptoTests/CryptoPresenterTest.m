//
//  CryptoPresenterTest.m
//  cryptoTests
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//


#import <XCTest/XCTest.h>
#import "CryptoPresenter.h"
#import "ViewController.h"
#import "CryptoViewSpy.h"
#import "CryptoServiceMock.h"
#import "CryptoFakeFactory.h"

@interface CryptoPresenterTests : XCTestCase

@property (nonatomic, strong) CryptoPresenter *sut;
@property (nonatomic, strong) CryptoServiceMock *service;
@property (nonatomic, strong) CryptoViewSpy *view;

@end

@implementation CryptoPresenterTests

- (void)setUp {
    [super setUp];
    self.view = [[CryptoViewSpy alloc] init];
    self.service = [[CryptoServiceMock alloc] init];
    self.sut = [[CryptoPresenter alloc] initWithView:self.view service:self.service];
}

- (void)tearDown {
    self.view = nil;
    self.sut = nil;
    [super tearDown];
}

- (void)testFetchCryptoData {
    //Given
    NSArray<Crypto *> *fakeCryptoData = @[CryptoFakeFactory.value];
    _service.fakeCryptoData = fakeCryptoData;
    //When
    [_sut fetchCryptoData];
    //Then
    XCTAssertTrue([_view displayCryptoDataCalled]);
    XCTAssertEqualObjects(_view.displayedCryptoData, fakeCryptoData);
}

@end
