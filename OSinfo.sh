#Define alias for repeated echo -e
E() {
  echo -e "$@"
}


# Define colors  
GREEN='\033[0;32m'
RED=$(E '\033[0;31m')
NOCOLOR=$(E '\033[0m')

E "${GREEN}========================${NOCOLOR}"
E "${GREEN} OS Version Info        ${NOCOLOR}"
E "${GREEN}========================${NOCOLOR}"
E
 cat /etc/os-release | grep -E '^NAME=|^VERSION='
E
E "${GREEN}========================${NOCOLOR}"
E "${GREEN} Users with bash shell  ${NOCOLOR}"
E "${GREEN}========================${NOCOLOR}"
E
 cat /etc/passwd | grep '/bin/bash' | cut -d: -f1  
E
E "${GREEN}========================${NOCOLOR}" 
E "${GREEN} Open Ports             ${NOCOLOR}"
E "${GREEN}========================${NOCOLOR}"
E
 ss -ntulp | grep LISTEN | sed -E "s/(:[0-9]+)/:${RED}\1${NOCOLOR}/"
E
