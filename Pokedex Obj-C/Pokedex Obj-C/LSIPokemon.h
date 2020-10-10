//
//  LSIPokemon.h
//  Pokedex Obj-C
//
//  Created by Waseem Idelbi on 10/9/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIPokemon : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) int identifier;
@property (nonatomic) NSMutableArray<NSString *> *abilities;
@property (nonatomic) NSURL *spriteURL;

- (instancetype)initWithName:(NSString *)name identifier:(int)identifier spriteURL:(NSURL *)spriteURL;

@end

NS_ASSUME_NONNULL_END

