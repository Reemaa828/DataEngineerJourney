#syntax
lis=["A","B","c","N"]
print(lis)

#mutable, ordered
lis.append("reem")
print(lis)

lis.remove("B")
print(lis)

lis[0]="Z"
print(lis)

print(lis[0])

#inserting without replacing
lis.insert(2,"C")
print(lis)

#when trying to insert more than the slice
lis[1:2]=["rre","rree"]
print(lis)

#When trying to insert less than the slice
lis[1:3]=[123]
print(lis)

#use extend to add values
lis.extend(["reasem","reeeee","ererer"])
print(lis)

#we can use extent with any iterable
lis.extend((1,2,3,4))
print(lis)

#remove
lis.remove("reem")
print(lis)
#the remove() method removes the first occurrence

#pop
lis.pop(3)
print(lis)
lis.pop()
print(lis)

#delete entire list
rr=lis
print(rr)
del rr
# print(rr) it doesn't exist

# #clear 
# lis.clear()
# print(lis)

#lloop Comprehension
print(lis)
[print(x) for x in lis]

#loop 
for i in range(len(lis)):
    print(lis[i])


fruits = ["apple", "banana", "cherry", "kiwi", "mango"]
newlist = []

for x in fruits:
  if "a" in x:
    newlist.append(x)

print(newlist) 

### List Comprehension
# fruits = ["apple", "banana", "cherry", "kiwi", "mango"]

# newlist = [x for x in fruits if "a" in x]

# print(newlist) 

# newlist = [x for x in fruits if x != "apple"] 

# newlist = [x.upper() for x in fruits] 

# newlist = [x if x != "banana" else "orange" for x in fruits] 

# sort
thislist = ["orange", "mango", "kiwi", "pineapple", "banana"]
thislist.sort()
print(thislist)

l2=[3,4,2,7,1,9,4,1,0]
l2.sort()
l2.sort(reverse=True)
print(l2)
l2.reverse() # reverse it regardless the order
print(l2)

#sort() method is case sensitive, resulting in all capital letters being sorted before lower case letters
# use str.lower

#copying the list
#three ways
liss=lis.copy()
print(liss)
liss1=lis[:]
print(liss1)
liss2=list(liss)
print(liss2)