//
//  Crypto.h
//  crypto
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import <Foundation/Foundation.h>

@interface Crypto : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *symbol;
@property (nonatomic, strong) NSNumber *price;
@property (nonatomic, strong) NSString *id;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
