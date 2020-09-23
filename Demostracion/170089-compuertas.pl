# ********************************************************************************************* #
#                                                                                               #
#                                 Major:    IT Engineering                                      #
#       Name of the specialty professor:    González Ibarra Juan Carlos                         #
#                               Subject:    Theory of Computation                               #
#               Name of the institution:    Universidad Politecnica de San Luis Potosí          #
#                     Name & enrollment:    Baltazar Loyola Gabriel Enrique, 170089             #
#                                                                                               #
#                           Description:    The three basic logical operators are OR, AND       # 
#                                           and NOT, represented in this Perl program by        # 
#                                           OR, AND and NOT, respectively.                      #
#                                                                                               #
#       Written:       20/10/2020                                                               #
#       Last updated:  22/10/2020                                                               #
#                                                                                               #
# ********************************************************************************************* #

#Modules
use warnings;
use strict;


my @booleans=qw(0 1);                    #boolean array with the possible  values True and False
my $x; 
my $y;

#-----------------OR TRUTH TABLE-----------------

print("  x\t  y   x OR y \n------------------\n");           #OR table header 

for $x (@booleans){                      #OR Table content
	for $y (@booleans){
		print("  ",$x);                  # $x value
		print("\t  ");
		print($y);                       # $y value
		print("\t    ");
		print($x or $y);                 # $x OR $y value
		print("\t  \n");
	}
}      

#-----------------AND TRUTH TABLE-----------------

print("\n  x\t  y   x AND y \n------------------\n");           #AND table header 

for $x (@booleans){                      #AND Table content
	for $y (@booleans){
		print("  ",$x);                  # $x value
		print("\t  ");
		print($y);                       # $y value
		print("\t    ");
		print($x and $y);                # $x AND $y value
		print("\t  \n");
	}
}      


#-----------------NOT TRUTH TABLE-----------------

print("\n  x\t  NOT x \n---------------\n");           #NOT table header 

$x=0  ;                     #NOT Table content
print("  ",$x,"\t   ");
print(not $x,"\n");         #  NOT $x value
$x=1 ;                      
print("  ",$x,"\t   ");
print(not $x,"\n");         #  NOT $x value


#----------------- ^ TRUTH TABLE-----------------

print("\n\n  x\t y\tx ^ y \n----------------------\n");           # ^ table header 
for $x (@booleans){
    for $y (@booleans){
        print("  ",$x,"\t ",$y,"\t  ");
        if(!$x != !$y){
            print("1 \n");
        }else{
            print("0 \n");
        }
    }
}
