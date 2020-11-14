#!/bin/bash

## ---------------------------------
# Variables
# ----------------------------------
RED='\033[1;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
STD='\033[0;0;39m'
LINE_BREAK=--------------------------------------------------------------------------------------
ENV=''
set -a # automatically export all variables
source .env
set +a

## ---------------------------------
# Redirect to Main
# ----------------------------------
redirectToMainMenu() {
    echo $LINE_BREAK
    echo "# PRESS ANY KEY TO GO BACK TO MENU ..."
    read response 
}

## ---------------------------------
# Set variable for Environment file
# $1 if its true then we will ask each time
# ----------------------------------
getEnvironment() {
    clear
    if [[ $1 == 'true' || $ENV != '' ]] ; then
        echo -e "SELECT ENVIRONMENT FILE, PRESS 1 FOR ${YELLOW}[.env]${STD} => 1, OR 2 FOR ${YELLOW}[.env.testing]${STD} ?"
        read -s -n 1 key
        if [[ $key == "1" ]]; then
            ENV='.env'
        elif [[ $key == "2" ]]; then
            ENV='.env.testing'
        fi      
    fi
}

## ------------------------------------------------
# Get databse name from environment file
# $1 environment filename .env or .env.testing
# $2 which variable value you are looking for
# -------------------------------------------------
getEnvironmentValue() {
    if [ -f "$(dirname $PWD)/project/$1" ] ; then
        if [ ! -z "$2" ] ; then
            local db=$(grep $2 $(dirname $PWD)/app/$1 | xargs)
            db=${db#*=}
            echo $db | tr -cd '[:print:]\n\r'
        fi 
    fi   
}

## ---------------------------------
# Check system requirement
# ----------------------------------
system_check() {
    clear
    echo -e "# CHECKING SYSTEM REQUIREMENT"   
    echo $LINE_BREAK
    echo -e "# ${YELLOW} 1.CHECKING REQUIRED SOFTWARE ${STD}"    
    docker -v 2>&1 > /dev/null
    [[ $(echo $?) = 0 ]] && echo -e "\t${GREEN} Docker Installed -- [YES] ${STD}" || echo -e "  ## ${RED} Docker Installed -- [NO] ${STD}"
    git --version 2>&1 > /dev/null
    [[ $(echo $?) = 0 ]] && echo -e "\t${GREEN} Git Installed ----- [YES] ${STD}" || echo -e "  ## ${RED} Git Installed ----- [NO] ${STD}"  

    echo -e "# ${YELLOW} 2.CHECKING DIRECTORY STRUCTURE ${STD}"
    echo -e "   Recommended directory-structure, missing directories which are in red color"
    [[ $(basename $(dirname $PWD)) = "app" ]] && dirs="${GREEN}\t└──app\n${STD}" || dirs="${RED}\t└──app\n${STD}"
    [[ -d "$(dirname $PWD)/docker-data" ]] && dirs="${dirs}${GREEN}\t  └──docker-data\n${STD}" || dirs="${dirs}${RED}\t  └──docker-data\n${STD}"
    [[ -d "$(dirname $PWD)/docker-data/mysql" ]] && dirs="${dirs}${GREEN}\t\t└──mysql\n${STD}" || dirs="${dirs}${RED}\t\t└──mysql\n${STD}"
    [[ -d "$(dirname $PWD)/docker-data/redis" ]] && dirs="${dirs}${GREEN}\t\t└──redis\n${STD}" || dirs="${dirs}${RED}\t\t└──redis\n${STD}"
    [[ -d "$(dirname $PWD)/portal-docker" ]] && dirs="${dirs}${GREEN}\t └──portal-docker\n${STD}" || dirs="${dirs}${RED}\t └──portal-docker\n${STD}"
    [[ -d "$(dirname $PWD)/app" ]] && dirs="${dirs}${GREEN}\t └──app${STD}" || dirs="${dirs}${RED}\t └──app${STD}"
    echo -e ${dirs}

    echo -e "# ${YELLOW} 3.CHECKING SSL CERTIFICATES FILES ${STD}"
    echo -e "   SSL certificate files, missing files are in red color"
    [[ -f "$(dirname $PWD)/portal-docker/nginx/ssl/self.crt" ]] && echo -e "${GREEN}\t[app/portal-docker/nginx/ssl/self.crt] exist? [YES]${STD}" || echo -e "${RED}\t[app/portal-docker/nginx/ssl/self.crt] exist? [NO]${STD}"
    [[ -f "$(dirname $PWD)/portal-docker/nginx/ssl/self.csr" ]] && echo -e "${ssl}${GREEN}\t[app/portal-docker/nginx/ssl/self.csr] exist? [YES]${STD}" || echo -e "${ssl}${RED}\t[app/portal-docker/nginx/ssl/self.csr] exist? [NO]${STD}"
    [[ -f "$(dirname $PWD)/portal-docker/nginx/ssl/self.key" ]] && echo -e "${ssl}${GREEN}\t[app/portal-docker/nginx/ssl/self.key] exist? [YES]${STD}" || echo -e "${ssl}${RED}\t[app/portal-docker/nginx/ssl/self.key] exist? [NO]${STD}"
 
    echo -e "# ${YELLOW} 4.CHECKING HOST FILE ENTRIES ${STD}"
    echo -e "   host file enteries, missing entries are in red color"
    [[ ! -z $(grep "app.portal.test" "/etc/hosts") ]] && echo -e "${GREEN}\t[127.0.0.1 app.portal.test] exist? [YES]${STD}" || echo -e "${RED}\t[127.0.0.1 app.portal.test] exist? [NO]${STD}"
    [[ ! -z $(grep "mail.portal.test" "/etc/hosts") ]] && echo -e "${GREEN}\t[127.0.0.1 mail.portal.test] exist? [YES]${STD}" || echo -e "${RED}\t[127.0.0.1 mail.portal.test] exist? [NO]${STD}"

    echo -e "# ${YELLOW} 5.CHECKING ENVIRONMENT FILES AND VALUE ${STD}"
    echo -e "   Environment files, missing files are in red color"
    [[ -f "$(dirname $PWD)/portal-docker/.env" ]] && echo -e "${GREEN}\t[app/portal-docker/.env] exist? [YES]${STD}" || echo -e "${RED}\t[app/portal-docker/.env] exist? [NO]${STD}"
    [[ -f "$(dirname $PWD)/app/.env" ]] && echo -e "${ssl}${GREEN}\t[app/app/.env] exist? [YES]${STD}" || echo -e "${ssl}${RED}\t[app/app/.env] exist? [NO]${STD}"
    [[ -f "$(dirname $PWD)/app/.env.testing" ]] && echo -e "${ssl}${GREEN}\t[app/app/.env.testing] exist? [YES]${STD}" || echo -e "${ssl}${RED}\t[app/app/.env.testing] exist? [NO]${STD}"

    echo -e "# ${YELLOW} 6.RECOMMENDED ENVIRONMENT VAR VALUES [app/portal-docker/.env] ${STD}"
    [[ $(getEnvironmentValue '.env' 'DB_HOST') == '127.0.0.1' ]] && echo -e "${RED}\tShould be DB_HOST=mysql? [NO]${STD}" || echo -e "${GREEN}\tShould be DB_HOST=mysql? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'DB_USERNAME') != 'root' ]] && echo -e "${RED}\tShould be DB_USERNAME=root? [NO]${STD}" || echo -e "${GREEN}\tShould be DB_USERNAME=root? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'BROADCAST_DRIVER') != 'redis' ]] && echo -e "${RED}\tShould be BROADCAST_DRIVER=redis? [NO]${STD}" || echo -e "${GREEN}\tShould be BROADCAST_DRIVER=redis? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'QUEUE_CONNECTION') != 'sync' ]] && echo -e "${RED}\tShould be QUEUE_CONNECTION=sync? [NO]${STD}" || echo -e "${GREEN}\tShould be QUEUE_CONNECTION=sync? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'QUEUE_DRIVER') != '' ]] && echo -e "${RED}\tRemove this variable QUEUE_DRIVER? [NO]${STD}" || echo -e "${GREEN}\tRemove this variable QUEUE_DRIVER? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'MAIL_DRIVER') != 'smtp' ]] && echo -e "${RED}\tShould be MAIL_DRIVER=smtp? [NO]${STD}" || echo -e "${GREEN}\tShould be MAIL_DRIVER=smtp? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'MAIL_HOST') != 'mailhog' ]] && echo -e "${RED}\tShould be MAIL_HOST=smtp? [NO]${STD}" || echo -e "${GREEN}\tShould be MAIL_HOST=smtp? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'MAIL_PORT') != '1025' ]] && echo -e "${RED}\tShould be MAIL_PORT=1025? [NO]${STD}" || echo -e "${GREEN}\tShould be MAIL_PORT=1025? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'MAIL_DRIVER') != 'smtp' ]] && echo -e "${RED}\tShould be MAIL_DRIVER=smtp? [NO]${STD}" || echo -e "${GREEN}\tShould be MAIL_DRIVER=smtp? [YES]${STD}"
    [[ $(getEnvironmentValue '.env' 'MAIL_DRIVER') != 'smtp' ]] && echo -e "${RED}\tShould be MAIL_DRIVER=smtp? [NO]${STD}" || echo -e "${GREEN}\tShould be MAIL_DRIVER=smtp? [YES]${STD}"
}

## ---------------------------------
# Drop and recreate test database
# ----------------------------------
refreshDatabase() {
    getEnvironment true
    local environmentFile=$ENV
    local db=$(getEnvironmentValue $environmentFile DB_DATABASE)

    if [ $db != "" ] ; then            
            if [[ $environmentFile == ".env" ]]; then
                echo -e "${RED} ALERT: YOU ARE GOING TO RESET DEV [$db] DATABASE${STD}"
            fi
            echo -e "# DO YOU WANT TO RESET DATABASE [${YELLOW}$db${STD}] ? 'Y' TO CONTINUE OR ANY KEY TO CANCEL ... "
            read -s -n 1 key
            if [[ $key = "Y" || $key = "y" ]]; then
                docker-compose exec  mysql mysql -uroot -p${DB_ROOT_PASSWORD} -e "SHOW DATABASES;"
                echo "DROPPING '${db}' ..."
                docker-compose exec  mysql mysql -uroot -p${DB_ROOT_PASSWORD} -e "DROP DATABASE $db;"
                echo "CREATING '${db}' ..."
                docker-compose exec  mysql mysql -uroot -p${DB_ROOT_PASSWORD} -e "CREATE SCHEMA $db DEFAULT CHARACTER SET utf8 ;"
                docker-compose exec  mysql mysql -uroot -p${DB_ROOT_PASSWORD} -e "SHOW DATABASES LIKE '$db';"
                echo -e "${GREEN}# DATABASE [$db] HAS BEEN RESET.${STD}"
            fi
    else 
        echo -e "${RED}ERROR:refreshDatabase:${STD} ENVIRONMENT VARIABLE `DB_DATABASE` IS MISSING, PLEASE CHECK THIS FILE [$(dirname $PWD)/app/$environmentFile]"  
    fi
}

## ---------------------------------
# Run Migation on Dev or Testing database
# ----------------------------------
runDBMigrations() {
    getEnvironment true
    local environmentFile=$ENV
    local db=$(getEnvironmentValue $environmentFile DB_DATABASE)
    
    if [[ $db != "" ]] ; then  
        if [[ $environmentFile == ".env" ]]; then
            local env=''
            echo -e "${RED} ALERT: YOU ARE GOING RUN DB MIGRATIONS IN DEV [$db] DATABASE${STD}"
        elif [[ $environmentFile == ".env.testing" ]]; then
            local env='--env=testing'
        fi          
        echo $env
        echo -e "# DO YOU WANT TO RUN DB MIGRATIONS DATABASE [${YELLOW}$db${STD}] ? 'Y' TO CONTINUE OR ANY KEY TO CANCEL ... " 
        read -s -n 1 key
        if [[ $key = "Y" || $key = "y" ]]; then
            echo "RUNNING MODULE MIGRATIONS [${db}]"
            docker-compose run --rm artisan module:migrate $env
            echo "RUNNING MIGRATIONS [${db}]"
            docker-compose run --rm artisan migrate $env
            echo -e "${GREEN}# DATABASE MIGRATION HAS BEEN COMPLETED [$db].${STD}"        
        fi 
    else 
        echo -e "${RED}ERROR:runDBMigrations:${STD} ENVIRONMENT VARIABLE DB_DATABASE IS MISSING, PLEASE CHECK THIS FILE [$(dirname $PWD)/app/$environmentFile]"
    fi
}

## ---------------------------------
# Run Automation testing
# ----------------------------------
runAutomationTests() {
    echo -e "# DO YOU WANT TO EXECUTE AUTOMATION TEST ? 'Y' TO CONTINUE OR ANY KEY TO CANCEL ... " 
    read -s -n 1 key
    if [[ $key = "Y" || $key = "y" ]]; then
        echo "RUNNING AUTOMATION TESTING ..."
        docker-compose run --rm php vendor/bin/phpunit
        echo -e "${GREEN}# AUTOMATION TESTING HAS BEEN COMPLETED.${STD}"          
    fi
}

## ---------------------------------
# Run PHPCS Linting
# ----------------------------------
runCodeSniffer() {
    echo -e "# DO YOU WANT TO EXECUTE CODE SNIFFER ? 'Y' TO CONTINUE OR ANY KEY TO CANCEL ... " 
    read -s -n 1 key
    if [[ $key = "Y" || $key = "y" ]]; then
        echo "RUNNING PHP CODE SNIFFER ..."
        docker-compose run --rm php vendor/bin/phpcs --standard=phpcs.xml
        echo -e "${GREEN}# PHP CODE SNIFFER EXECUTION HAS BEEN COMPLETED.${STD}"            
    fi 
}

## ---------------------------------
# Check docker servic is running
# $1 docker-compose service name e.g web
# ----------------------------------
service_check() {
    if [ -z `docker-compose ps -q $1` ] || [ -z `docker ps -q --no-trunc | grep $(docker-compose ps -q $1)` ]; then
        echo 0
    else
        echo 1
    fi    
}

isWebRunning=$(service_check web)
isPhpRunning=$(service_check php)
isMysqlRunning=$(service_check mysql)
isRedisRunning=$(service_check redis)
isMailhogRunning=$(service_check mailhog)
isLazyDockerRunning=$(service_check lazydocker)

## ---------------------------------
# Check if XDEBUG is enabled in PHP containe
# ----------------------------------
is_xdebug_on() {
    local flag=$(docker-compose exec php bash -c '[ -f "/usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini" ] && echo on')
    echo $flag | tr -cd '[:print:]\n\r' | tr -dc '[:alnum:]\n\r'
}

## ---------------------------------
# Execute Menu Commands
# $1 option A or B or C or ABC
# ----------------------------------
executeMenuCommands() {
    local choice=$(echo $1 | tr "[:lower:]" "[:upper:]")
	case $choice in 
        "0") docker-compose -f docker-compose-lazydocker.yml up -d lazydocker && docker-compose -f docker-compose-lazydocker.yml exec lazydocker lazydocker ;;
		"1") system_check && redirectToMainMenu;;     
		"2") docker-compose -f docker-compose.yml -f docker-compose-lazydocker.yml build ;;
		"A") docker-compose up -d site ;;          
        "B") docker-compose up -d ;;
		"C") docker-compose exec php scripts.sh xdebug-on ;;          
        "D") docker-compose exec php scripts.sh xdebug-off ;;  
        "G") docker-compose run --rm composer install --ignore-platform-reqs && redirectToMainMenu;; 
        "H") docker-compose run --rm composer update && redirectToMainMenu;; 
        "I") docker-compose run --rm artisan vendor:publish --provider="Backpack\CRUD\BackpackServiceProvider" --tag=public && redirectToMainMenu;; 
        "J") docker-compose run --rm npm install && docker-compose run --rm npm run dev && redirectToMainMenu;; 
        "K") refreshDatabase && redirectToMainMenu;; 
        "L") runDBMigrations && redirectToMainMenu;;
        "M") runAutomationTests && redirectToMainMenu;;
        "N") runCodeSniffer && redirectToMainMenu;;        
		"X") docker-compose -f docker-compose.yml -f docker-compose-lazydocker.yml down && exit 0 ;;   
		"") exit 0 ;;   
	esac
}

# function to display menus
showMenu() {
    [[ $isWebRunning = 0 ]] && web="${RED}web${STD}" || web="${GREEN}web${STD}"
    [[ $isPhpRunning = 0 ]] && php="${RED}php${STD}" || php="${GREEN}php${STD}"
    [[ $isMysqlRunning = 0 ]] && mysql="${RED}mysql${STD}" || mysql="${GREEN}mysql${STD}"
    [[ $isRedisRunning = 0 ]] && redis="${RED}redis${STD}" || redis="${GREEN}redis${STD}"
    [[ $isMailhogRunning = 0 ]] && mailhog="${RED}mailhog${STD}" || mailhog="${GREEN}mailhog${STD}"
    [[ $isLazyDockerRunning = 0 ]] && lazydocker="${RED}lazydocker${STD}" || lazydocker="${GREEN}lazydocker${STD}"

    clear
	echo " PHP DEV ENVIRONMENT"
    echo -e " LEGEND: ${GREEN}[GREEN]${STD} => RUNNING SERVICE, ${RED}[RED]${STD} => STOPPED SERVICE"
    echo " AVAILABLE SERVICES: web, mysql, php, redis, composer, npm, artisan, mailhog, lazydocker"
	echo $LINE_BREAK
    echo -e "${YELLOW} 1.BUILD & MONITORING: ${STD}"
    echo $LINE_BREAK    
    echo -e " [0]     >> [$lazydocker] to monitor your containers (optional)"
    echo -e " [1]     >> Check System Requirements, before building container images"
    echo -e " [2]     >> Build [web, mysql, php, redis, composer, npm, artisan, mailhog, lazydocker]"    
	echo $LINE_BREAK
    echo -e "${YELLOW} 2.Build & Start:${STD} http://localhost:8080/"
    echo $LINE_BREAK
    echo -e " [A]     >> Start [${web} + ${php} + ${mysql} + ${redis}]"
    echo -e " [B]     >> Start [${web} + ${php} + ${mysql} + ${redis} + ${mailhog}]"
    if [[ $isPhpRunning != 0 ]] ; then
        if [[ $(is_xdebug_on) == 'on ' ]]; then
            echo -e " [D]     >> Turn off Xdebug"
        else
            echo -e " [C]     >> Turn on Xdebug"    
        fi 
    fi       
	echo $LINE_BREAK
    echo -e "${YELLOW} 3.COMPOSER ARTISAN MIGRATION ${STD}"
    echo $LINE_BREAK
    echo -e " [G]     >> Install Composer"
    echo -e " [H]     >> Update Composer"
    echo -e " [J]     >> Node install & Recompile CSS & JSpackages"    
    echo -e " [K]     >> Drop & Recrate database"
    echo -e " [L]     >> Execute DB migrations"
    echo -e " [M]     >> Execute Automation Tests"
    echo -e " [N]     >> Execute PHPSniffer"   
    echo -e " [X]     >> ${RED}Exit menu and shut down all services${STD}\n"
    echo " [ENTER] >> TO EXIT"
    echo $LINE_BREAK
}

# read input from the keyboard and take a action
listenMenuChoice() {
	local choice
	read -p "SELECT YOUR CHOICE: " choice
    for (( i=0; i<${#choice}; i++ )); do
        executeMenuCommands "${choice:$i:1}"
    done    
}

while true
do
    showMenu
    listenMenuChoice
done