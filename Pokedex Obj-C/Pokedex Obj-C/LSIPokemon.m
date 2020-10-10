//
//  LSIPokemon.m
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/9/20.
//

#import "LSIPokemon.h"

//MARK: - Interface -
@interface LSIPokemon (NSKeyValueCoding)



@end

//MARK: - Implementation -
@implementation LSIPokemon

- (instancetype)initWithName:(NSString *)name identifier:(NSNumber *)identifier spriteURL:(NSURL *)spriteURL {
    if (self = [super init]) {
        _name = name;
        _identifier = identifier;
        _spriteURL = spriteURL;
        _abilities = [[NSMutableArray alloc] initWithArray:@[]];
    }
    return self;
}

@end
