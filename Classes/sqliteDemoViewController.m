//
//  sqliteDemoViewController.m
//  sqliteDemo
//
//  Created by vikrant mhaske on 10/01/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

#import <sqlite3.h>
#import "sqliteDemoViewController.h"

@implementation sqliteDemoViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
//	NSString* dbPath = [[NSBundle mainBundle] pathForResource:@"emp" ofType:nil];
//	sqlite3* pDb = nil;
//	int result = sqlite3_open([dbPath UTF8String], &pDb);
//	NSAssert1(SQLITE_OK == result, NSLocalizedStringFromTable
//			  (@"Unable to open the sqlite database (%@) . ",
//			   @" Database" , @" ") ,
//			  [NSString stringWithUTF8String: sqlite3_errmsg(pDb) ] ) ;
////	sqlite3_stmt* statement = nil;
////		result = sqlite3_prepare(pDb, @"select * from employees;", -1, &statement, NULL);
//	char** rows = NULL;
//	int nrow = 0;
//	int ncolumn = 0;
//	char* errorMessange = NULL;
//	sqlite3_get_table(pDb, "select * from employees;" , &rows, &nrow, &ncolumn, &errorMessange);
//	for(int i = 0; i <= nrow; i++) {
//		for(int j = 0; j <ncolumn; j++) {
//			printf("%s \t", rows[i*ncolumn + j]);
//		}
//		printf("\n");
//	}
	
	
	NSString* dbPath = [[NSBundle mainBundle] pathForResource:@"employeeDB" ofType:nil];
	sqlite3* hDb;
	int result = sqlite3_open([dbPath UTF8String], &hDb);
	char** rows = NULL;
	int nRow;
	int nCol;
	char* err;
	
	result = sqlite3_get_table(hDb, "select* from employeeTB", &rows, &nRow, &nCol, &err);
	for(int i=0; i<=nRow; i++) {
		for(int j=0; j<nCol; j++) {
			printf("%s \t\t", rows[i*nCol+j]);
		}
		printf("\n");
	} 
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

@end
