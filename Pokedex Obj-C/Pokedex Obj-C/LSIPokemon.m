//
//  LSIPokemon.m
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/9/20.
//

#import "LSIPokemon.h"

//MARK: - Interface -
@interface LSIPokemon ()

@end

//MARK: - Implementation -
@implementation LSIPokemon

- (instancetype)initWithName:(NSString *)name dataURL:(nonnull NSURL *)dataURL{
    if (self = [super init]) {
        _name = name;
        _dataURL = dataURL;
        _abilities = [[NSMutableArray alloc] initWithArray:@[]];
    }
    return self;
}

@end
