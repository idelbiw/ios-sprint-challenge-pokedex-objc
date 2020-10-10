//
//  LSIPokedexTableViewController.m
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/9/20.
//

#import "LSIPokedexTableViewController.h"
#import "LSIPokemonListing.h"


//MARK: - Interface -
@interface LSIPokedexTableViewController ()

@end


//MARK: - Implementation -
@implementation LSIPokedexTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

// Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

// Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
}

@end
