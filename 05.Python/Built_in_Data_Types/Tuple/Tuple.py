## tuple playground
tub=(1,2,3,4)
print(tub)

#we cannot change
# tub[0]=7
# print(tub)

#we cannot delete
# del tub[0]

print(tub[0])
print(len(tub))

#to add one item to a tuple (we have to add a comma next to the item)
tub1=(1,)
print(len(tub1))
print(type(tub1))

tub12=(1)
print(type(tub12))

#workaround to do this is to change it into a LIST
tub3=(1,3,4,"ree")
lisst=list(tub3)
#adding
lisst.append("adding")
tub3=tuple(lisst)
print(tub3)
#removing 
lisst.remove("ree")
tub3=tuple(lisst)
print(tub3)
#change
lisst[0]=9
tub3=tuple(lisst)
print(tub3)

# we can not add and it doesn't have a .append method but we can do this
tub3+=(3,4,5)
print(tub3)

# we can delete the tuple compleletly
del tub3
# print(tub3)

# packing
tub4=(1,3,4,5,6,4)
#unpacking via a variable name 
# it must be (number of variables)=(number of values in tuple)
# we put an astrik to take remining values
(num1,num2,*num3) =tub4
print(num3)

#or
(num1,*num2,num3,num4)=tub4
print(num1)
print(num2)
print(num3)
print(num4)

#check if a value is in the tuple
if 5 in tub4:
    print("it exits")
else:
    print("no")

#Tuple methods
#return the index
print(tub4.index(3))
#count occcurances
print(tub4.count(4))
