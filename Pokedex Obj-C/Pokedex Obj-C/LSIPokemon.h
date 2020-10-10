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
@property (nonatomic, nonnull) NSURL *dataURL;
@property (nonatomic) NSNumber *identifier;
@property (nonatomic) NSMutableArray<NSString *> *abilities;
@property (nonatomic) NSURL *spriteURL;

- (instancetype)initWithName:(NSString *)name dataURL:(NSURL *)dataURL;

@end

NS_ASSUME_NONNULL_END

