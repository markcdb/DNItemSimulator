//
//  Parser.m
//  DN Item Simulator
//
//  Created by mericksters on 9/4/14.
//  Copyright (c) 2014 merick. All rights reserved.
//

#import "Parser.h"

@implementation Parser

-(id)initParser{
    if ( self == [super init]){
        app = (AppDelegate*)[[UIApplication sharedApplication]delegate];
        
    }
    return self;
    
}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict{
    if([elementName isEqualToString:@"messages"]){
        app.listArray = [[NSMutableArray alloc]init];
    }
    else if ([elementName isEqualToString:@"message"]) {
        theList = [[List alloc]init];
        theList.message = [[attributeDict objectForKey:@"message"]stringValue];
        theList.mid = [[attributeDict objectForKey:@"mid"]integerValue];
    }
    
    
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    if(!currentElementValue){
        currentElementValue =  [[NSMutableString alloc]initWithString:string];
        
    }
    else{
        [currentElementValue appendString:string];
        theList.message = string;

    }
    
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    if([elementName isEqualToString:@"messages"]){
        return;
    }
    if([elementName isEqualToString:@"message"]){
        [app.listArray addObject:theList];
        theList = nil;
    }
    else{
        [theList setValue:currentElementValue forKey:elementName];
        currentElementValue = nil;
    }
    
}

@end
