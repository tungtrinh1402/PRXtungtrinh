output_files = {
    'http': 'h.txt',
    'https': 'hs.txt',
    'socks4': 's4.txt',
    'socks5': 's5.txt'
}

with open('prxall.txt', 'r') as f:
    proxies = f.readlines()

for proxy in proxies:
    protocol, proxy_address = proxy.strip().split('://', 1)
    with open(output_files[protocol], 'a') as f:
        f.write(proxy_address + '\n')
