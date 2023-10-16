//
//  CryptoTableViewCell.h
//  Crypo
//
//  Created by Jorge Luis Rivera Ladino on 13/10/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CryptoTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleCoin;
@property (weak, nonatomic) IBOutlet UILabel *prefixCoin;
@property (weak, nonatomic) IBOutlet UILabel *valueCoin;
@property (weak, nonatomic) IBOutlet UILabel *subValueCoin;
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@end

NS_ASSUME_NONNULL_END
