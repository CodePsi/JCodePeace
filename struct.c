#include <string.h>
#include <stdio.h>

struct warehouse{
	char *name;
	char *type;
	int quantity;
	double cost;
	
};
int main (){
struct warehouse wh;
wh.name = "Sugar";
wh.type = "kg";
wh.quantity = 100;
wh.cost = 10.12;
printf("%s, %s, %d, %g", wh.name, wh.types, wh.quantity, wh.cost);
return 0;
}
