import sys
print "python is opening the file ", sys.argv[1]
f=open(sys.argv[1],"r") 
print "and here's what is in it:"
print"----------------------------"
print(f.read())
print"----------------------------"

