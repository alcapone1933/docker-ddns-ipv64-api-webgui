# DynDNS API IPV64.NET Vorlage [IPv64.net](https://ipv64.net/)

### API URL

https://ipv64.net/api.php \
https://ipv64.net/api

Beispiel API Key=123456787654321234567876543

### API Authentication

***Bearer Token:*** Dein Account API Key (Beispieloption 1) \
`Authorization: Bearer 123456787654321234567876543`

***Basic Auth Base64:*** {username:none}:{apikey} - Dein Account API Key (Beispieloption 2) \
Beispieloption 2-a \
`echo -n  none:apikey | base64` \
`echo -n  none:123456787654321234567876543 | base64` = bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM= \
Beispieloption 2-b \
`Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)` \
`Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM=`

***apikey:*** [GET|POST] - Dein Account API Key (Beispieloption 3) \
Webseite aufrufen im Browser \
https://ipv64.net/api.php?apikey=123456787654321234567876543

### API Limits

***API Account Limit:*** Das API Limit ist abhängig von der Account Klasse. (Default 64 requests / 24h) \
***API Call Limit:*** Maximal 5 API-Anfragen innerhalb von  10 Sekuden.

***

## API Calls in der Übersicht

### [GET] Account Informations

[GET] get_account_info \
Erhalte alle Informationen über den User Account.

### [GET] Account Logging

[GET] get_logs \
Erhalte die letzten 100 Log-Einträge.

### [GET] Domain Informations

[GET] get_domains \
Erhalte alle Informationen bezüglich der Domains und Records zurück.

### [POST] Domain erstellen (form-data)

[POST] add_domain => Domainnamen [String Format: domainname.ipv6.net] \
Erstellt eine neue Domain und erstellt automatisch A o. AAAA Record.

### [DELETE] Domain löschen (x-www-form-urlencoded)

[DELETE] del_domain => Domainnamen [String Format: domainname.ipv6.net] \
Domain wird mit allen bekannten DNS-Records unverzüglich gelöscht.

### [POST] DNS Record hinzufügen (form-data)

[POST] add_record => Domainnamen [String Format: domainname.ipv6.net] \
[POST] praefix => Domainpraefix [String Format] \
[POST] type => A,AAAA,CNAME,MX,SRV,NS [String Format] \
[POST] content => Inhalt für den DNS Record. [String Format] \
Ein neuer DNS-Record wird in der angegebenen Domain angelegt.

### [DELETE] DNS Record löschen (form-data)

[DELETE] del_record => DNS Record ID [Integer Format] \
Der DNS-Record wird unverzüglich aus der Domain gelöscht.

### API-Response (Response)

***HTTP-Header-Codes***: 200 OK, 201 Created, 400 Bad Request, 401 Unauthorized, 403 Forbidden, 429 Too Many Requests \
***JSON-Payload:*** \
***Response:*** Antwort auf deinen API-Call \
***Status:*** success OR http header code \
***API-Call:*** Welcher Call wurde aufgerufen.

***

## API Beispiele

Beispiel API Key=123456787654321234567876543

### [GET] API Account Informations: **get_account_info**

Beispieloption 1:   `curl -X GET https://ipv64.net/api.php?get_account_info -H "Authorization: Bearer 123456787654321234567876543"` \
Beispieloption 2-a: `curl -X GET https://ipv64.net/api.php?get_account_info -H "Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM="` \
Beispieloption 2-b: `curl -X GET https://ipv64.net/api.php?get_account_info -H "Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)"` \
Beispieloption 3:   https://ipv64.net/api.php?apikey=123456787654321234567876543&get_account_info

### [GET]  API Account Logging **get_logs**

Beispieloption 1:   `curl -X GET https://ipv64.net/api.php?get_logs -H "Authorization: Bearer 123456787654321234567876543"` \
Beispieloption 2-a: `curl -X GET https://ipv64.net/api.php?get_logs -H "Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM="` \
Beispieloption 2-b: `curl -X GET https://ipv64.net/api.php?get_logs -H "Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)"` \
Beispieloption 3:   https://ipv64.net/api.php?apikey=123456787654321234567876543&get_logs


### [GET] API Domain Informations:  **get_domains**

Beispieloption 1:   `curl -X GET https://ipv64.net/api.php?get_domains -H "Authorization: Bearer 123456787654321234567876543"` \
Beispieloption 2-a: `curl -X GET https://ipv64.net/api.php?get_domains -H "Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM="` \
Beispieloption 2-b: `curl -X GET https://ipv64.net/api.php?get_domains -H "Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)"` \
Beispieloption 3:   https://ipv64.net/api.php?apikey=123456787654321234567876543&get_domains

### [POST] API Domain erstellen (form-data): **add_domain**

Beispieloption 1:   `curl -X POST https://ipv64.net/api.php -H "Authorization: Bearer 123456787654321234567876543" -d "add_domain=deine-domain.ipv64.net"` \
Beispieloption 2-a: `curl -X POST https://ipv64.net/api.php -H "Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM=" -d "add_domain=deine-domain.ipv64.net"` \
Beispieloption 2-b: `curl -X POST https://ipv64.net/api.php -H "Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)" -d "add_domain=deine-domain.ipv64.net"`

### [DELETE] API Domain löschen (x-www-form-urlencoded): **del_domain**

Beispieloption 1:   `curl -X DELETE https://ipv64.net/api.php -H "Authorization: Bearer 123456787654321234567876543" -d "del_domain=deine-domain.ipv64.net"` \
Beispieloption 2-a: `curl -X DELETE https://ipv64.net/api.php -H "Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM=" -d "del_domain=deine-domain.ipv64.net"` \
Beispieloption 2-b: `curl -X DELETE https://ipv64.net/api.php -H "Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)" -d "del_domain=deine-domain.ipv64.net"`

### [POST] API  DNS Record hinzufügen (form-data): **add_record**

[POST] add_record => deine-domain.ipv64.net \
[POST] praefix => Domainpraefix \
[POST] type => CNAME \
[POST] content => schroederdennis.de \
Ein neuer DNS-Record wird in der angegebenen Domain angelegt.

Beispieloption 1:   `curl -X POST https://ipv64.net/api.php -H "Authorization: Bearer 123456787654321234567876543" -d "add_record=deine-domain.ipv64.net" -d "type=CNAME" -d "content=schroederdennis.de"` \
Beispieloption 2-a: `curl -X POST https://ipv64.net/api.php -H "Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM=" -d "add_record=deine-domain.ipv64.net" -d "type=CNAME" -d "content=schroederdennis.de"` \
Beispieloption 2-b: `curl -X POST https://ipv64.net/api.php -H "Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)" -d "add_record=deine-domain.ipv64.net" -d "type=CNAME" -d "content=schroederdennis.de"`

### [DELETE] API DNS Record löschen (form-data): **del_record**

[DELETE] del_record => 3469 \
Der DNS-Record wird unverzüglich aus der Domain gelöscht.

Liste Dir alle Domains auf:

***[GET] get_domains***

Beispieloption 1:   `curl -X GET https://ipv64.net/api.php?get_domains -H "Authorization: Bearer 123456787654321234567876543"` \
Beispieloption 2-a: `curl -X GET https://ipv64.net/api.php?get_domains -H "Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM="` \
Beispieloption 2-b: `curl -X GET https://ipv64.net/api.php?get_domains -H "Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)"` \
Beispieloption 3:   https://ipv64.net/api.php?apikey=123456787654321234567876543&get_domains

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
Dann die _record_id=3469_ löschen:

Beispieloption 1:   `curl -X DELETE https://ipv64.net/api.php -H "Authorization: Bearer 123456787654321234567876543" -d "del_record=3469"` \
Beispieloption 2-a: `curl -X DELETE https://ipv64.net/api.php -H "Authorization: Basic bm9uZToxMjM0NTY3ODc2NTQzMjEyMzQ1Njc4NzY1NDM=" -d "del_record=3469"` \
Beispieloption 2-b: `curl -X DELETE https://ipv64.net/api.php -H "Authorization: Basic $(echo -n none:123456787654321234567876543 | base64)" -d "del_record=3469"`
