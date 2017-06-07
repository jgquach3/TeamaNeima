from sys import argv
for line in open(argv[1]).readlines()[1:]:
    print('http' + line.split(',http')[-2].strip())
