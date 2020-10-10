//
//  LSIPokemon.h
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/9/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIPokemon : NSObject

@property (nonatomic, nonnull) NSString *name;
@property (nonatomic, nonnull) NSNumber *identifier;
@property (nonatomic, nonnull) NSMutableArray<NSString *> *abilities;
@property (nonatomic, nonnull) NSURL *spriteURL;

- (instancetype)initWithName:(NSString *)name identifier:(NSNumber *)identifier spriteURL:(NSURL *)spriteURL;

@end

NS_ASSUME_NONNULL_END

