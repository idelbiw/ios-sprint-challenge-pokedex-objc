//
//  LSIPokedexTableViewController.h
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/9/20.
//

#import <UIKit/UIKit.h>
#import "Pokedex_Obj_C-Swift.h"


NS_ASSUME_NONNULL_BEGIN

@interface LSIPokedexTableViewController : UITableViewController

@property (nonatomic, nonnull) PokemonAPI *apiController;

@end

NS_ASSUME_NONNULL_END
