#!/usr/bin/env python3
# 2022-12-23
# Creator by = Discord: ./𝕾𝖊𝖗𝖕𝖊𝖓𝖘𝖎𝖓.𝖘𝖍#0007 Github: https://github.com/Serpensin

# This python script checks record id per api calls on ipv64.net
# requirements = prettytable,requests,python-dotenv

import requests as r
from sys import exit
from dotenv import load_dotenv
import os
import json
from prettytable import PrettyTable


def build_table(ent, key, subdomain):
                    for records in ent[key][subdomain].keys():
                        if records == 'records':
                            for record in ent[key][subdomain]['records']:
                                if record['record_id'] != '':
                                    #Hier Code
                                    x.add_row([record['record_id'], record['praefix'], subdomain, record['ttl'], record['type'], record['content'], record['last_update'], record['record_key']])


def search_entry(ent):
    for key in ent.keys():
        if key == 'subdomains':
            if search == '':
                for subdomain in ent[key].keys():
                    x.field_names =  ['Record ID', 'Praefix', 'Domain', 'TTL', 'Type', 'Content', 'Last Update', 'Record KEY']
                    build_table(ent, key, subdomain)
                x.max_width = int(breite)
                x.sortby = 'Domain'
                print(x)
            else:
                if search in ent[key].keys():
                    for subdomain in ent[key].keys():
                        if subdomain == search:
                            x.field_names =  ['Record ID', 'Praefix', 'Domain', 'TTL', 'Type', 'Content', 'Last Update', 'Record KEY']
                            build_table(ent, key, subdomain)
                            print(x)
                            exit()
                else:
                    exit('Domain not found')
                                         
                        
load_dotenv()
search = os.getenv('DOMAIN_IPV64')
api_key = os.getenv('DOMAIN_API')
breite = os.getenv('TABELLE_BREITE')
agent = os.getenv('CURL_USER_AGENT')
if agent == '':
    agent = './𝕾𝖊𝖗𝖕𝖊𝖓𝖘𝖎𝖓.𝖘𝖍#0007 on Discord. Github: https://github.com/Serpensin'
if breite is None:
    breite = 40

headers = {
  'Authorization': f'Bearer {api_key}',
  'User-Agent': agent
}

response = r.request("GET", "https://ipv64.net/api.php?get_domains", headers=headers)
if response.status_code != 200:
    exit("API Key not valid")
 

x = PrettyTable()
search_entry(json.loads(response.text))
