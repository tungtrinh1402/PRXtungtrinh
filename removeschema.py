import re
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