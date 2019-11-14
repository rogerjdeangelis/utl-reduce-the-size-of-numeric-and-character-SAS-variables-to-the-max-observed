Reduce the size of numeric and character SAS variables to the max observed                                                                     
                                                                                                                                               
github                                                                                                                                         
https://tinyurl.com/ygwgv2um                                                                                                                   
https://github.com/rogerjdeangelis/utl-reduce-the-size-of-numeric-and-character-SAS-variables-to-the-max-observed                              
                                                                                                                                               
see github                                                                                                                                     
https://github.com/rogerjdeangelis/utl_optlen                                                                                                  
                                                                                                                                               
SAS forum                                                                                                                                      
https://communities.sas.com/t5/SAS-Programming/Length-statement-Increasing-Data-Size/m-p/604244                                                
                                                                                                                                               
utl_optlen                                                                                                                                     
SAS reduce or shrink the size of numeric and character SAS variables to the max observed in the data optimum lengths for SAS variables         
                                                                                                                                               
macros                                                                                                                                         
https://tinyurl.com/y9nfugth                                                                                                                   
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories                                                     
                                                                                                                                               
*_                   _                                                                                                                         
(_)_ __  _ __  _   _| |_                                                                                                                       
| | '_ \| '_ \| | | | __|                                                                                                                      
| | | | | |_) | |_| | |_                                                                                                                       
|_|_| |_| .__/ \__,_|\__|                                                                                                                      
        |_|                                                                                                                                    
;                                                                                                                                              
                                                                                                                                               
data have;                                                                                                                                     
  length name sex $200;                                                                                                                        
  set sashelp.class(obs=7);                                                                                                                    
  height=round(height);                                                                                                                        
  weight=round(weight);                                                                                                                        
run;quit;                                                                                                                                      
                                                                                                                                               
 Variables in Creation Order                                                                                                                   
                                                                                                                                               
 Variable    Type    Len                                                                                                                       
                                                                                                                                               
 NAME        Char    200                                                                                                                       
 SEX         Char    200                                                                                                                       
 AGE         Num       8                                                                                                                       
 HEIGHT      Num       8                                                                                                                       
 WEIGHT      Num       8                                                                                                                       
                                                                                                                                               
                                                                                                                                               
 HAVE total obs=7                                                                                                                              
                                                                                                                                               
 NAME       SEX    AGE    HEIGHT    WEIGHT                                                                                                     
                                                                                                                                               
 Alfred      M      14      69        113                                                                                                      
 Alice       F      13      57         84                                                                                                      
 Barbara     F      13      65         98                                                                                                      
 Carol       F      14      63        103                                                                                                      
 Henry       M      14      64        103                                                                                                      
 James       M      12      57         83                                                                                                      
 Jane        F      12      60         85                                                                                                      
                                                                                                                                               
*            _               _                                                                                                                 
  ___  _   _| |_ _ __  _   _| |_                                                                                                               
 / _ \| | | | __| '_ \| | | | __|                                                                                                              
| (_) | |_| | |_| |_) | |_| | |_                                                                                                               
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                                              
                |_|                                                                                                                            
;                                                                                                                                              
                                                                                                                                               
 Variables in Creation Order                                                                                                                   
                                                                                                                                               
#    Variable    Type    Len                                                                                                                   
                                                                                                                                               
1    NAME        Char      7  * was 200                                                                                                        
2    SEX         Char      1  * was 200                                                                                                        
3    AGE         Num       3  * was 8                                                                                                          
4    HEIGHT      Num       3  * was 8                                                                                                          
5    WEIGHT      Num       3  * was 8                                                                                                          
                                                                                                                                               
*          _       _   _                                                                                                                       
 ___  ___ | |_   _| |_(_) ___  _ __                                                                                                            
/ __|/ _ \| | | | | __| |/ _ \| '_ \                                                                                                           
\__ \ (_) | | |_| | |_| | (_) | | | |                                                                                                          
|___/\___/|_|\__,_|\__|_|\___/|_| |_|                                                                                                          
                                                                                                                                               
;                                                                                                                                              
                                                                                                                                               
%utl_optlen(inp=have,out=want);                                                                                                                
                                                                                                                                               
