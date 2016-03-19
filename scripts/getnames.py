with open("getnames.txt", "r") as f:
    lines = [x.split(" ")[3][1:-2] for x in f.read().split("\n") if x != ""]

for l in lines:
    if l != "":
        print l
