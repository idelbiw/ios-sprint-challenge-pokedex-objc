//
//  LSIPokemonListing.m
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/10/20.
//

#import "LSIPokemonListing.h"

@implementation LSIPokemonListing

- (instancetype)initWithName:(NSString *)name url:(NSURL *)url {
    if (self = [super init]) {
        _name = name;
        _url = url;
    }
    return self;
}

@end
