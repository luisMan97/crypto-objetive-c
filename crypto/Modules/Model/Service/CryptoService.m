//
//  CryptoService.m
//  Crypo
//
//  Created by Jorge Luis Rivera Ladino on 13/10/23.
//

#import "CryptoService.h"
#import "Crypto.h"
#import "CryptoServiceProtocol.h"

@interface CryptoService () <CryptoServiceProtocol>
@end

@implementation CryptoService

- (void)fetchCryptoDataWithCompletion:(void (^)(NSArray<Crypto *> *cryptoList, NSError *error))completion {
    NSURL *url = [NSURL URLWithString:@"https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=10&page=1&sparkline=false&ids=bitcoin,ethereum,ripple"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            if (error) {
                completion(nil, error);
            } else {
                NSError *jsonError;
                NSArray *cryptoDataArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&jsonError];

                if (jsonError) {
                    completion(nil, jsonError);
                } else {
                    NSMutableArray<Crypto *> *cryptoList = [NSMutableArray array];
                    for (NSDictionary *cryptoDictionary in cryptoDataArray) {
                        Crypto *crypto = [[Crypto alloc] initWithDictionary:cryptoDictionary];
                        [cryptoList addObject:crypto];
                    }
                    completion(cryptoList, nil);
                }
            }
        }];
        [dataTask resume];
}

@end
