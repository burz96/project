with open("create_datarefs.txt", "r") as f:
    lines = [x for x in f.read().split("\n")]

for l in lines:
    if l != "":
		a = "/".join(l.split("/")[1:])
		print "dref_%s = createDatarefi(\"%s\", \"dc10/%s\", 0)" % (a, a, l)
