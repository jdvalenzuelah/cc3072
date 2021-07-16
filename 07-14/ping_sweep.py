#!/usr/bin/python3

from os import system

def ping(ip: str, count: int = 1) -> int:
    return system(f"ping -c {count} {ip} 2>&1 >/dev/null")

if __name__ == "__main__":
    
    for i in range(0, 256):
        ip = f"192.168.0.{i}"
        if ping(ip) == 0:
            print(ip)