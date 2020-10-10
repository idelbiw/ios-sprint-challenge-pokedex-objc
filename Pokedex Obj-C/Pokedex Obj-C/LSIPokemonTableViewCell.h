//
//  LSIPokemonTableViewCell.h
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/10/20.
//

#import <UIKit/UIKit.h>
#import "LSIPokemonListing.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSIPokemonTableViewCell : UITableViewCell

@property (nonatomic, nonnull) LSIPokemonListing *pokemonListing;

@end

NS_ASSUME_NONNULL_END
