the files in this category_utf8 folder is generated from object-C code based on the files in category_emoji/ folder

one could generate the files with the object-C code as following:

- (void)convertEmojiToUTF8 {
    NSString* emojiTextPath = /path/to/emoji-text;
    NSString* content = [NSString stringWithContentsOfFile:emojiTextPath encoding:NSUTF8StringEncoding error:nil];
    NSData* data = [content dataUsingEncoding:NSNonLossyASCIIStringEncoding];
    NSString* utf8Value = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
	NSLog(@"utf8Value = ", utf8Value);
}
