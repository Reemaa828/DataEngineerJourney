#set sytax
ss={1,2,3,4,5}
print(ss)
#we cannot do this because it's not indexed
# print(ss[0])
ss.add(2) #no duplicate values
#it unchangeable but can be added and removed
ss.add("reem")
print(ss)
#removed
ss.remove(1)
print(ss)
#change?
# ss={12,31,33}
# print(ss)

#we can use it  as a venn diagram
#intersection
ss1={2,3,9}
ss2=ss1 & ss
# ss2 should have intersection of two, so 2,3 2,3
print(ss2)

#union; will include everything
ss2=ss1.union(ss)
print(ss2)
#or to union
ss2=ss1 | ss
#we can union may sets
ss2=ss1.union(ss,ss,ss)


#subset; it will answer with true or false if it's part of another set
ss1.remove(9)
print("ss1","=",ss1)
print("ss","=",ss)
print(ss1.issubset(ss))

#Set items can appear in a different order every time you use them
se1={1,2,3,4}
se2={5,6,7}
print(se1)
se1.update(se2) #we can put any iterable
print(se1)
se1.update([111,22,43])
print(se1)

#will not throw an error if the value doesn't exist unlike `remove``
se1.discard("!33")

#symmetric difference; will find the difference between two sets and not the values that exist between the two
w={11,22,3,4}
b={11,2,332,3,321}
v=w.symmetric_difference(b)
print("v is" ,v)

#difference; will find the difference of set 
z=w.difference(b)
print(z)
z=b.difference(w)
print(z)

#difference_update; will return difference in the same set
w.difference_update(b)
print(w)

## | for union  & for intersect - for difference ^ for symmetric difference
 
se1 = se2 + set
print(se1)