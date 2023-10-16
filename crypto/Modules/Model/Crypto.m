//
//  Crypto.m
//  crypto
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import "Crypto.h"

@implementation Crypto

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        _name = dictionary[@"name"];
        _symbol = dictionary[@"symbol"];
        _price = dictionary[@"current_price"];
        _id = dictionary[@"id"];
    }
    return self;
}

@end
