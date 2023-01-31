import re
with open('live.txt') as infile, open('outh.txt', 'w') as outfile:
    for line in infile:
        if line.startswith("http"):
            outfile.write(line)
with open('live.txt') as infile, open('outs4.txt', 'w') as outfile:
    for line in infile:
        if line.startswith("socks4"):
            outfile.write(line)
with open('live.txt') as infile, open('outs5.txt', 'w') as outfile:
    for line in infile:
        if line.startswith("socks5"):
            outfile.write(line)
filename = r'outh.txt'
string = open(filename).read()
new_str = re.sub('http://','',string)
open(filename, 'w').write(new_str)

filename = r'outs4.txt'
string = open(filename).read()
new_str = re.sub('socks4://','',string)
open(filename, 'w').write(new_str)

filename = r'outs5.txt'
string = open(filename).read()
new_str = re.sub('socks5://','',string)
open(filename, 'w').write(new_str)