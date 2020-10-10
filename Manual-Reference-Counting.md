# Manual Reference Counting

Answer the following questions inline with this document.



1. Are there memory leaks with this code? (If so, where are the leaks?)

	```swift
	NSString *quote = @"Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it. - Steve Jobs";

	NSCharacterSet *punctuationSet = [[NSCharacterSet punctuationCharacterSet] retain];                        <----- MEMORY LEAK ----- MEMORY LEARK -----****************

	NSString *cleanQuote = [[quote componentsSeparatedByCharactersInSet:punctuationSet] componentsJoinedByString:@""];
	NSArray *words = [[cleanQuote lowercaseString] componentsSeparatedByString:@" "];

	NSMutableDictionary<NSString *, NSNumber *> *wordFrequency = [[NSMutableDictionary alloc] init];           <----- MEMORY LEAK ----- MEMORY LEARK -----***************

	for (NSString *word in words) {
		NSNumber *count = wordFrequency[word];
		if (count) {
			wordFrequency[word] = [NSNumber numberWithInteger:count.integerValue + 1];
		} else {
			wordFrequency[word] = [[NSNumber alloc] initWithInteger:1];
		}
	}

	printf("Word frequency: %s", wordFrequency.description.UTF8String);
	```



	2. Rewrite the code so that it does not leak any memory with ARC disabled

2. Which of these objects is autoreleased?  Why?

	1. `NSDate *yesterday = [NSDate date];`                                                                                                This is not owned by us
	
	2. `NSDate *theFuture = [[NSDate dateWithTimeIntervalSinceNow:60] retain];`                          Needs to be released, we can just call `autorelease` on the the whole block on the right including the `retain`
	
	3. `NSString *name = [[NSString alloc] initWithString:@"John Sundell"];`                               This also needs to be released because we're allocating memory for it 
	
	4. `NSDate *food = [NSDate new];`                                                                                                            We have to release when the keyword `new` is used
	
	5. `LSIPerson *john = [[LSIPerson alloc] initWithName:name];`                                                     We are allocating memory and initializing, so we have to release
	
	6. `LSIPerson *max = [[[LSIPerson alloc] initWithName:@"Max"] autorelease];`                        This one is good  : )




3. Explain when you need to use the `NSAutoreleasePool`.

If you wirte this:
` NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];`
`// Code benefitting from a local autorelease pool.`
`[pool release]; `
You can place anything that needs to be released above on line 56 in place of the comment
If you're using MRC (Manual Reference Counting) or if ARC (Automatic Reference Counting is disabled, you will need to keep track of and manage anything you declare that takes up memory. 
For example, if you allocate memory and initialize an instance of a class like `NSString`, then you will need to release this from memory when you are done using it.
`NSAutoreleasePool` or `@autoreleasepool {  }` can help you with this as they will release whatever you give them on your behalf.




4. Implement a convenience `class` method to create a `LSIPerson` object that takes a `name` property and returns an autoreleased object.

```swift

//MARK: - Interface

@interface LSIPerson: NSObject

@property (nonatomic, copy) NSString *name;

- (instancetype)initWithName:(NSString *)name;

- (instancetype)newPersonWithName:(NSString *)name;

@end





//MARK: - Implementation -

@implementation

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}


- (instancetype)newPersonWithName:(NSString *)name {

    LSIPerson *person = [[[LSIPerson alloc] initWithNme: @"Waseem"]autorelease];
    return person;

}

@end



LSIPerson *person = [[[LSIPerson alloc] initWithNme: @"Waseem"]autorelease];

```
