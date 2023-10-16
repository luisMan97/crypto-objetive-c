//
//  ViewController.h
//  crypto
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) IBOutlet UITableView *tableView;
- (void)displayCryptoData:(NSDictionary *)cryptoData;
- (void)displayError:(NSString *)errorMessage;
@end

