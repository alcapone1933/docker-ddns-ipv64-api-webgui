# Docker DDNS IPV64.NET API Web Gui Vorlage


Schau dir Die Volage der API Beispiele [DynDNS API IPV64.NET Vorlage](./api-ipv64-net.md#api-beispiele) um meine Web Gui Vorlage zu verstehen

# MENU 
  - [API-IPv64](#api-ipv64)
    ### [Auswahl Übersicht](#auswahl-api-abfrage)
    - [get_account_info = [GET] API Account Informations](#auswahl-api-abfrage-get_account_info)
    - [get_logs = [GET] API Account Logging](#auswahl-api-abfrage-get_logs)
    - [get_domains = [GET] API Domain Informations](#auswahl-api-abfrage-get_domains)
    - [add_domain = [POST] API Domain erstellen](#auswahl-api-abfrage-add_domain)
    - [del_domain = [DELETE] API Domain löschen](#auswahl-api-abfrage-del_domain)
    - [add_record = [POST] API DNS Record hinzufügen OHNE PRAEFIX](#auswahl-api-abfrage-add_record)
    - [add_record_praefix = [POST] API DNS Record hinzufügen MIT PRAEFIX](#auswahl-api-abfrage-add_record_praefix)
    - [get_domains_record_id-info = [GET] API Domain Für Record ID](#auswahl-api-abfrage-get_domains_record_id-info)
    - [del_record = [DELETE] API DNS Record löschen](#auswahl-api-abfrage-del_record)
    - [del_record_id = [DELETE] API DNS Record löschen](#auswahl-api-abfrage-del_record_id)

  - [DNS-UTILS](#dns-utils)
    ### [Auswahl Übersicht](#auswahl-dns-utils)
    - [DOMAIN](#auswahl-domain)
    - [OPTION](#auswahl-option)
    - [DOMAIN TYPE](#auswahl-domain-type)
    - [DNS SERVER](#auswahl-dns-server)

&nbsp;

## API-IPv64

### Auswahl Api abfrage

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| get_account_info              | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| get_logs                      | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| get_domains                   | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| add_domain                    | 123456787654321234567876543 | ddeine-domain.ipv64.net | ----------- | -------------- | -------------- | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| del_domain                    | 123456787654321234567876543 | ddeine-domain.ipv64.net | ----------- | -------------- | -------------- | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| add_record                    | 123456787654321234567876543 | ddeine-domain.ipv64.net | A           | 1.1.1.1        | -------------- | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| add_record_praefix            | 123456787654321234567876543 | ddeine-domain.ipv64.net | A           | 1.1.1.1        | sub-domain     | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| get_domains_record_id-info    | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| get_domains_record_id-info    | 123456787654321234567876543 | ddeine-domain.ipv64.net | ----------- | -------------- | -------------- | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| del_record                    | 123456787654321234567876543 | ddeine-domain.ipv64.net | A           | 1.1.1.1        | sub-domain     | ---------------- |
| _____________________________ | ___________________________ | _______________________ | ___________ | ______________ | ______________ | ________________ |
| del_record_id                 | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | 3469             |

***

### Auswahl Api abfrage **get_account_info**
 - get_account_info = [GET] API Account Informations

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| get_account_info              | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | ---------------- |

<img src="../img/get_account_info.png" width="1400" height="150">

#### AUSGABE
```json
{
  "email": "dennis@ipv64.net",
  "reg_date": "2022-10-28 16:54:23",
  "update_hash": "1234567890abcdefghijklmn",
  "api_key": "123456787654321234567876543",
  "dyndns_updates": 1,
  "api_updates": 67,
  "account_class": {
    "class_name": "VIP",
    "dyndns_domain_limit": 10,
    "dyndns_update_limit": 512,
    "api_limit": 1024
  },
  "info": "success",
  "status": "200 OK",
  "get_account_info": "get_account_info"
}
```

***

### Auswahl Api abfrage **get_logs**
- get_logs = [GET] API Account Logging

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| get_logs                      | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | ---------------- |


<img src="../img/get_logs.png" width="1400" height="150">

#### AUSGABE
```json
{
  "logs": [
    {
      "subdomain": "",
      "time": "2022-11-17 21:53:19",
      "header": "API: Get Account Info",
      "content": "Alle Accountdaten über API abgefragt."
    },
    {
      "subdomain": "",
      "time": "2022-11-16 08:25:43",
      "header": "API: Get Domains",
      "content": "Anfrage an die API, liefere alle Domaininformationen."
    }
  ],
  "info": "success",
  "status": "200 OK",
  "get_account_info": "get_logs"
}
```

***

### Auswahl Api abfrage **get_domains**
- get_domains = [GET] API Domain Informations

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| get_domains                   | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | ---------------- |

<img src="../img/get_domains.png" width="1400" height="150">

#### AUSGABE
```json
{
  "subdomains": {
    "deine-domain.ipv64.net": {
      "updates": 0,
      "wildcard": 1,
      "records": [
        {
          "record_id": 3469,
          "content": "schroederdennis.de",
          "ttl": 60,
          "type": "CNAME",
          "praefix": "",
          "last_update": "2022-11-02 22:00:00"
        }
      ]
    }
  },
  "info": "success",
  "status": "200 OK",
  "add_domain": "get_domains"
}
```

***

### Auswahl Api abfrage **add_domain**
- add_domain = [POST] API Domain erstellen

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| add_domain                    | 123456787654321234567876543 | ddeine-domain.ipv64.net | ----------- | -------------- | -------------- | ---------------- |

<img src="../img/add_domain.png" width="1400" height="150">

#### AUSGABE
```json
{
  "info": "success",
  "status": "201 Created",
  "add_domain": "ddeine-domain.ipv64.net"
}
```

***

### Auswahl Api abfrage **del_domain**
- del_domain = [DELETE] API Domain löschen

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| del_domain                    | 123456787654321234567876543 | ddeine-domain.ipv64.net | ----------- | -------------- | -------------- | ---------------- |

<img src="../img/del_domain.png" width="1400" height="150">

#### AUSGABE
```json
{
  "info": "success",
  "status": "202 Accepted",
  "del_domain": "del_domain"
}
```

***

### Auswahl Api abfrage **add_record**
- add_record = [POST] API DNS Record hinzufügen OHNE PRAEFIX

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| add_record                    | 123456787654321234567876543 | ddeine-domain.ipv64.net | A           | 1.1.1.1        | -------------- | ---------------- |

<img src="../img/add_record.png" width="1400" height="150">

#### AUSGABE
```json
{
  "info": "success",
  "status": "201 Created",
  "add_record": "ddeine-domain.ipv64.net"
}
```

***

### Auswahl Api abfrage **add_record_praefix**
- add_record_praefix = [POST] API DNS Record hinzufügen MIT PRAEFIX

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| add_record_praefix            | 123456787654321234567876543 | ddeine-domain.ipv64.net | A           | 1.1.1.1        | sub-domain     | ---------------- |


<img src="../img/add_record_praefix.png" width="1400" height="150">

#### AUSGABE
```json
{
  "info": "success",
  "status": "201 Created",
  "add_record": "ddeine-domain.ipv64.net"
}
```

***

### Auswahl Api abfrage **get_domains_record_id-info**
- get_domains_record_id-info = [GET] API Domain Für Record ID

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| get_domains_record_id-info    | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| get_domains_record_id-info    | 123456787654321234567876543 | deine-domain.ipv64.de   | ----------- | -------------- | -------------- | ---------------- |

<img src="../img/get_domains_record_id-info.png" width="1400" height="150">

#### AUSGABE
```txt
+----------------------------+-------+------------+--------------------+-----+---------------------+-----------+
|           Domain           |  Type |   Prefix   |      Content       | TTL |     Last Update     | Record ID |
+----------------------------+-------+------------+--------------------+-----+---------------------+-----------+
|  ddeine-domain.ipv64.net   |   A   |            |      1.1.1.1       |  10 | 2022-11-17 22:46:45 |    6754   |
|  ddeine-domain.ipv64.net   |   A   | sub-domain |      1.1.1.1       |  10 | 2022-11-17 22:48:20 |    6755   |
|   deine-domain.ipv64.de    | CNAME |            | schroederdennis.de |  10 | 2022-11-04 07:46:09 |    3961   |
|   deine-domain.ipv64.net   | CNAME |            | schroederdennis.de |  10 | 2022-11-10 23:13:11 |    5805   |
+----------------------------+-------+------------+--------------------+-----+---------------------+-----------+
```

***

### Auswahl Api abfrage **del_record**
- del_record = [DELETE] API DNS Record löschen

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| del_record                    | 123456787654321234567876543 | ddeine-domain.ipv64.net | A           | 1.1.1.1        | sub-domain     | ---------------- |

<img src="../img/del_record.png" width="1400" height="150">

#### AUSGABE
```json
{
  "info": "success",
  "status": "202 Accepted",
  "del_record": "del_record"
}
```

***

### Auswahl Api abfrage **del_record_id**
- del_record_id = [DELETE] API DNS Record löschen

| Auswahl                       | API Key                     | DOMAIN IPV64            | DOMAIN TYPE | DOMAIN_CONTENT | DOMAIN_PRAEFIX | DOMAIN RECORD ID |
| ----------------------------- | --------------------------- | ----------------------- | ----------- | -------------- | -------------- | ---------------- |
| del_record_id                 | 123456787654321234567876543 | ----------------------- | ----------- | -------------- | -------------- | 6754             |

<img src="../img/del_record_id.png" width="1400" height="150">

#### AUSGABE
```json
{
  "info": "success",
  "status": "202 Accepted",
  "del_record": "del_record"
}
```

***

&nbsp;

## DNS UTILS

<img src="../img/dns-utils.png" width="1400" height="150">


### Auswahl DNS UTILS

| DOMAIN    | OPTION         | DOMAIN TYPE | DNS SERVER     |
| --------- | -------------- | ----------- | -------------- |
| ipv64.net | -------------- | ----------- | @ns1.ipv64.net |
| ipv64.net | -------------- | ANY         | @ns1.ipv64.net |
| ipv64.net | -------------- | A           | @ns1.ipv64.net |
| _________ | ______________ | ___________ | ______________ |
| ipv64.net | +short         | A           | @ns1.ipv64.net |
| _________ | ______________ | ___________ | ______________ |
| ipv64.net | +noall +answer | A           | @ns1.ipv64.net |


### Auswahl DOMAIN

Eine Domain

### Auswahl OPTION

- value: +short
- value: +noall +answer

### Auswahl DOMAIN TYPE

- value: ANY        (alle Einträge)
- value: A          (IPv4 Record eines Hosts)
- value: AAAA       (IPv6 Record eines Hosts)
- value: CNAME      (Kanonischer Name, Zuordnung von Aliassen)
- value: MX         (Mail Exchanger)
- value: NS         (Hostname eines autoritativen Nameservers)
- value: PTR        (Domain Name Pointer um IP-Adressen Namen zuzuweisen)
- value: SOA        (Start of Authority)
- value: SRV        (Angebotene Dienste)
- value: TXT        (Beliebiger Text)

### Auswahl DNS SERVER

- value: @ns1.ipv64.net
- value: @ns2.ipv64.net
- value: @1.1.1.1
- value: @8.8.8.8
