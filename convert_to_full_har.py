import json, sys

infile = sys.argv[1]
outfile = sys.argv[2]
with open(infile, 'r') as f:
    lines = f.readlines()
har = {}
with open(outfile, 'w') as f:
    for i, line in enumerate(lines):
        if i == 0:
            har['log'] = json.loads(line.rstrip('\n'))
        else:
            har['log']['entries'].append(json.loads(line.rstrip('\n')))
    f.write(json.dumps(har))
        


