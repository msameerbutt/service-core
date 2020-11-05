#!/bin/bash

## ---------------------------------
# Variables
# ----------------------------------
RED='\033[1;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
STD='\033[0;0;39m'
LINE_BREAK=--------------------------------------------------------------------------------------

## ---------------------------------
# Check docker servic is running
# $1 docker-compose service name e.g site
# ----------------------------------
service_check() {
    if [ -z `docker-compose ps -q $1` ] || [ -z `docker ps -q --no-trunc | grep $(docker-compose ps -q $1)` ]; then
        echo 0
    else
        echo 1
    fi    
}

is_xdebug_on() {
    echo $(docker-compose exec php bash -c '[ -f "/usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini" ] && echo "on"')
}

isSiteRunning=$(service_check web)
isPhpRunning=$(service_check php)
isMysqlRunning=$(service_check mysql)
isRedisRunning=$(service_check redis)
isMailhogRunning=$(service_check mailhog)
isLazyDockerRunning=$(service_check lazydocker)

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
    [[ $(basename $(dirname $PWD)) = "project" ]] && dirs="${GREEN}\t└──project\n${STD}" || dirs="${RED}\t└──project\n${STD}"
    [[ -d "$(dirname $PWD)/docker-data" ]] && dirs="${dirs}${GREEN}\t  └──docker-data\n${STD}" || dirs="${dirs}${RED}\t  └──docker-data\n${STD}"
    [[ -d "$(dirname $PWD)/docker-data/mysql" ]] && dirs="${dirs}${GREEN}\t\t└──mysql\n${STD}" || dirs="${dirs}${RED}\t\t└──mysql\n${STD}"
    [[ -d "$(dirname $PWD)/docker-data/redis" ]] && dirs="${dirs}${GREEN}\t\t└──redis\n${STD}" || dirs="${dirs}${RED}\t\t└──redis\n${STD}"
    [[ -d "$(dirname $PWD)/portal-docker" ]] && dirs="${dirs}${GREEN}\t └──portal-docker\n${STD}" || dirs="${dirs}${RED}\t └──portal-docker\n${STD}"
    [[ -d "$(dirname $PWD)/project-api" ]] && dirs="${dirs}${GREEN}\t └──project-api${STD}" || dirs="${dirs}${RED}\t └──project-api${STD}"
    echo -e ${dirs}

    echo -e "# ${YELLOW} 3.CHECKING SSL CERTIFICATES FILES ${STD}"
    echo -e "   SSL certificate files, missing files are in red color"
    [[ -f "$(dirname $PWD)/portal-docker/nginx/ssl/self.crt" ]] && echo -e "${GREEN}\t[project/portal-docker/nginx/ssl/self.crt] exist? [YES]${STD}" || echo -e "${RED}\t[project/portal-docker/nginx/ssl/self.crt] exist? [NO]${STD}"
    [[ -f "$(dirname $PWD)/portal-docker/nginx/ssl/self.csr" ]] && echo -e "${ssl}${GREEN}\t[project/portal-docker/nginx/ssl/self.csr] exist? [YES]${STD}" || echo -e "${ssl}${RED}\t[project/portal-docker/nginx/ssl/self.csr] exist? [NO]${STD}"
    [[ -f "$(dirname $PWD)/portal-docker/nginx/ssl/self.key" ]] && echo -e "${ssl}${GREEN}\t[project/portal-docker/nginx/ssl/self.key] exist? [YES]${STD}" || echo -e "${ssl}${RED}\t[project/portal-docker/nginx/ssl/self.key] exist? [NO]${STD}"
 
    echo -e "# ${YELLOW} 4.CHECKING HOST FILE ENTRIES ${STD}"
    echo -e "   host file enteries, missing entries are in red color"
    [[ ! -z $(grep "app.portal.test" "/etc/hosts") ]] && echo -e "${GREEN}\t[127.0.0.1 app.portal.test] exist? [YES]${STD}" || echo -e "${RED}\t[127.0.0.1 app.portal.test] exist? [NO]${STD}"
    [[ ! -z $(grep "mail.portal.test" "/etc/hosts") ]] && echo -e "${GREEN}\t[127.0.0.1 mail.portal.test] exist? [YES]${STD}" || echo -e "${RED}\t[127.0.0.1 mail.portal.test] exist? [NO]${STD}"

    echo -e "# ${YELLOW} 5.CHECKING ENVIRONMENT FILES ${STD}"
    echo -e "   Environment files, missing files are in red color"
    [[ -f "$(dirname $PWD)/portal-docker/.env" ]] && echo -e "${GREEN}\t[project/portal-docker/.env] exist? [YES]${STD}" || echo -e "${RED}\t[project/portal-docker/.env] exist? [NO]${STD}"
    [[ -f "$(dirname $PWD)/project-api/.env" ]] && echo -e "${ssl}${GREEN}\t[project/project-api/.env] exist? [YES]${STD}" || echo -e "${ssl}${RED}\t[project/project-api/.env] exist? [NO]${STD}"

    echo $LINE_BREAK
    echo "# Press enter to load main menu ... "
    read response    
}

# function to display menus
show_menus() {
    [[ $isSiteRunning = 0 ]] && site="${RED}web${STD}" || site="${GREEN}web${STD}"
    [[ $isPhpRunning = 0 ]] && php="${RED}php${STD}" || php="${GREEN}php${STD}"
    [[ $isMysqlRunning = 0 ]] && mysql="${RED}mysql${STD}" || mysql="${GREEN}mysql${STD}"
    [[ $isRedisRunning = 0 ]] && redis="${RED}redis${STD}" || redis="${GREEN}redis${STD}"
    [[ $isMailhogRunning = 0 ]] && mailhog="${RED}mailhog${STD}" || mailhog="${GREEN}mailhog${STD}"
    [[ $isLazyDockerRunning = 0 ]] && lazydocker="${RED}lazydocker${STD}" || lazydocker="${GREEN}lazydocker${STD}"
    [[ $isDocuiRunning = 0 ]] && docui="${RED}docui${STD}" || docui="${GREEN}docui${STD}"

    clear
	echo " PHP Dev Environment"
    echo -e " ${GREEN}Green${STD}: Service is running, ${RED}Red${STD}: Service is stopped"
    echo " Services: web, mysql, php, redis, composer, npm, artisan, mailhog, lazydocker"
	echo $LINE_BREAK
    echo -e "${YELLOW} 1.Monitoring: ${STD}(When required) choose one of the following service to monitor containers"
    echo $LINE_BREAK    
    echo -e " [0] >> Option 1 [$lazydocker]"   

	echo $LINE_BREAK
    echo -e "${YELLOW} 2.Build & Start:${STD} http://app.test:8080/"
    echo $LINE_BREAK
    echo -e " [2]     >> Check System Requirements"
    echo -e " [3]     >> Build [web, mysql, php, redis, composer, npm, artisan, mailhog, lazydocker]"
    echo -e " [A]     >> Start [${site} + ${php} + ${mysql} + ${redis} + ${mailhog}]"
    echo -e " [C]     >> Turn on Xdebug"
    echo -e " [D]     >> Turn off Xdebug"
	echo $LINE_BREAK
    echo -e "${YELLOW} 3.Other Direct Commands ${STD}"
    echo $LINE_BREAK
    echo -e " [G]     >> Install all the Laraval packages"
    echo -e " [H]     >> Update all the Laraval packages"
    echo -e " [I]     >> Build/publish the Backpack assets"
    echo -e " [J]     >> Install all the Node packages"
    echo -e " [K]     >> Recompile CSS & JS"
    echo -e " [L]     >> Run the database migrations"
    echo -e " [M]     >> Run the database module migrations"    
    echo -e " [ALL]   >> Run all command in a sequence from H to M"
    echo -e " [X]     >> ${RED}Exit menu and shut down all services${STD}\n"
    echo " [ENTER] >> TO EXIT"
    echo $LINE_BREAK
}

# read input from the keyboard and take a action
read_options(){
	local choice
	read -p "SELECT YOUR CHOICE: " choice
	case $choice in 
        "0") docker-compose -f stack/lazydocker/docker-compose.yml up -d lazydocker && docker-compose -f stack/lazydocker/docker-compose.yml exec lazydocker lazydocker ;;
		"2") system_check ;;     
		"3") docker-compose -f stack/lazydocker/docker-compose.yml build ;;
		"A") docker-compose up -d;;        
        "B") docker-compose up -d ;;
		"C") docker-compose exec php scripts.sh xdebug-on ;;          
        "D") docker-compose exec php scripts.sh xdebug-off ;;        		
        "G") docker-compose run --rm composer install ;; 
        "H") docker-compose run --rm composer update ;; 
        "I") docker-compose run --rm artisan vendor:publish --provider="Backpack\CRUD\BackpackServiceProvider" --tag=public ;; 
        "J") docker-compose run --rm npm install ;; 
        "K") docker-compose run --rm npm run dev ;; 
        "L") docker-compose run --rm artisan migrate ;; 
        "M") docker-compose run --rm artisan module:migrate ;; 
        "ALL") 
            docker-compose run --rm composer update
            docker-compose run --rm artisan vendor:publish --provider="Backpack\CRUD\BackpackServiceProvider" --tag=public
            docker-compose run --rm npm install
            docker-compose run --rm npm run dev
            docker-compose run --rm artisan migrate
            docker-compose run --rm artisan module:migrate
            echo "# Press enter to load main menu ... "
            read response  
        ;;
		"X") docker-compose -f docker-compose.yml -f stack/lazydocker/docker-compose.yml down ;;
		"") exit 0 ;;   
	esac
}

while true
do
    show_menus
    read_options
done