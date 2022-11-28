#!/bin/bash
# DOMAIN_API="123456787654321234567876543"
# DOMAIN_IPV64="deine-domain.ipv64.net"
# DOMAIN_TYPE="A"
# DOMAIN_CONTENT="1.1.1.1"
# DOMAIN_PRAEFIX="sub-domain"
# DOMAIN_RECORD_ID="3469"
VERSION="v0.0.3"
CURL_USER_AGENT="docker-ddns-ipv64-api-webgui/version=$VERSION github.com/alcapone1933/docker-ddns-ipv64-api-webgui"
cmd_get_account_info() {
    DOMAIN_API="$2"
    if [ -z "$DOMAIN_API" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X GET https://ipv64.net/api.php?get_account_info -H "Authorization: Bearer ${DOMAIN_API}" | jq
}
cmd_get_logs() {
    DOMAIN_API="$2"
    if [ -z "$DOMAIN_API" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X GET https://ipv64.net/api.php?get_logs -H "Authorization: Bearer ${DOMAIN_API}" | jq
}
cmd_get_domains() {
    DOMAIN_API="$2"  
    if [ -z "$DOMAIN_API" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X GET https://ipv64.net/api.php?get_domains -H "Authorization: Bearer ${DOMAIN_API}" | jq
}
cmd_add_domain() {
    DOMAIN_API="$2"
    DOMAIN_IPV64="$3"
    if [ -z "$DOMAIN_API" ] || [ -z "$DOMAIN_IPV64" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X POST https://ipv64.net/api.php -H "Authorization: Bearer ${DOMAIN_API}" -d "add_domain=${DOMAIN_IPV64}" | jq
}
cmd_del_domain() {
    DOMAIN_API="$2"
    DOMAIN_IPV64="$3"
    if [ -z "$DOMAIN_API" ] || [ -z "$DOMAIN_IPV64" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X DELETE https://ipv64.net/api.php -H "Authorization: Bearer ${DOMAIN_API}" -d "del_domain=${DOMAIN_IPV64}" | jq
}
cmd_add_record() {
    DOMAIN_API="$2"
    DOMAIN_IPV64="$3"
    DOMAIN_TYPE="$4"
    DOMAIN_CONTENT="$5"
    if [ -z "$DOMAIN_API" ] || [ -z "$DOMAIN_IPV64" ] || [ -z "$DOMAIN_TYPE" ] || [ -z "$DOMAIN_CONTENT" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X POST https://ipv64.net/api.php -H "Authorization: Bearer ${DOMAIN_API}" -d "add_record=${DOMAIN_IPV64}" -d "type=${DOMAIN_TYPE}" -d "content=${DOMAIN_CONTENT}" | jq
}
cmd_add_record_praefix() {
    DOMAIN_API="$2"
    DOMAIN_IPV64="$3"
    DOMAIN_TYPE="$4"
    DOMAIN_CONTENT="$5"
    DOMAIN_PRAEFIX="$6"
    if [ -z "$DOMAIN_API" ] || [ -z "$DOMAIN_IPV64" ] || [ -z "$DOMAIN_TYPE" ] || [ -z "$DOMAIN_CONTENT" ] || [ -z "$DOMAIN_PRAEFIX" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X POST https://ipv64.net/api.php -H "Authorization: Bearer ${DOMAIN_API}" -d "add_record=${DOMAIN_IPV64}" -d "type=${DOMAIN_TYPE}" -d "content=${DOMAIN_CONTENT}" -d "praefix=${DOMAIN_PRAEFIX}" | jq
}
cmd_get_domains_record_id-info() {
    DOMAIN_API="$2"
    DOMAIN_IPV64="$3"
    if [ -z "$DOMAIN_API" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    /app/conf/scripts/record-id-info.py ${DOMAIN_API} ${DOMAIN_IPV64}
}
cmd_del_record() {
    DOMAIN_API="$2"
    DOMAIN_IPV64="$3"
    DOMAIN_TYPE="$4"
    DOMAIN_CONTENT="$5"
    DOMAIN_PRAEFIX="$6"
    if [ -z "$DOMAIN_API" ] || [ -z "$DOMAIN_IPV64" ] || [ -z "$DOMAIN_TYPE" ] || [ -z "$DOMAIN_CONTENT" ] || [ -z "$DOMAIN_PRAEFIX" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X DELETE https://ipv64.net/api.php -H "Authorization: Bearer ${DOMAIN_API}" -d "del_record=${DOMAIN_IPV64}" -d "type=${DOMAIN_TYPE}" -d "content=${DOMAIN_CONTENT}" -d "praefix=${DOMAIN_PRAEFIX}" | jq
}
cmd_del_record_id() {
    DOMAIN_API="$2"
    DOMAIN_RECORD_ID="$3"
    if [ -z "$DOMAIN_API" ] || [ -z "$DOMAIN_RECORD_ID" ]; then
        echo "Error: Not enough arguments"
        usage
        exit 1
    fi
    curl -sSL --user-agent "${CURL_USER_AGENT}" -X DELETE https://ipv64.net/api.php -H "Authorization: Bearer ${DOMAIN_API}" -d "del_record=${DOMAIN_RECORD_ID}" | jq
}

COMMAND="$1"
case "$COMMAND" in
    get_account_info) cmd_get_account_info "$@" ;;
    get_logs) cmd_get_logs "$@" ;;
    get_domains) cmd_get_domains "$@" ;;
    add_domain) cmd_add_domain "$@" ;;
    del_domain) cmd_del_domain "$@" ;;
    add_record) cmd_add_record "$@" ;;
    add_record_praefix) cmd_add_record_praefix "$@" ;;
    get_domains_record_id-info) cmd_get_domains_record_id-info "$@" ;;
    del_record) cmd_del_record "$@" ;;
    del_record_id) cmd_del_record_id "$@" ;;
esac

exit 0
