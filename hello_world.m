/*
Compilation:	gcc -framework Foundation hello_world.m -o hello_world
Execution:		./hello_world
*/

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
	@autoreleasepool {
  	NSLog (@"Hello World");
  }
  return 0;
}
