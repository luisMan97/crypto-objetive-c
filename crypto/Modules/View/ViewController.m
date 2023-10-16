//
//  ViewController.m
//  crypto
//
//  Created by Jorge Luis Rivera Ladino on 16/10/23.
//

#import "ViewController.h"
#import "CryptoTableViewCell.h"
#import "CryptoViewProtocol.h"
#import "CryptoPresenter.h"
#import "Crypto.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate, CryptoViewProtocol>

@property (nonatomic, strong) NSArray<Crypto *> *cryptoData;
@property (nonatomic, strong) CryptoPresenter *cryptoPresenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"CryptoTableViewCell" bundle:[NSBundle mainBundle]]
       forCellReuseIdentifier:@"CryptoTableViewCell"];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.cryptoPresenter = [[CryptoPresenter alloc] initWithView:self service:[[CryptoService alloc] init]];
    [self.cryptoPresenter fetchCryptoData];
}

- (void)displayCryptoData:(NSArray<Crypto *> *)cryptoDataList {
    self.cryptoData = cryptoDataList;
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

- (void)displayError:(NSString *)errorMessage {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Error" message:errorMessage preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:nil];
}

// Implementa los métodos de UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cryptoData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CryptoTableViewCell";
    CryptoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];

    Crypto *crypto = self.cryptoData[indexPath.row];
    cell.titleCoin.text = crypto.name;
    cell.valueCoin.text = [crypto.price stringValue];
    cell.prefixCoin.text = crypto.symbol;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 110;
}

@end
