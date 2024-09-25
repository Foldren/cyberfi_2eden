#!/bin/bash

list_cd_path=(/root/.project /root/.project/tasks /root/.project/frontend /root/.project/bot /root/.project/api)
list_ssh_key_path=(/root/.ssh/project /root/.ssh/tasks /root/.ssh/frontend /root/.ssh/bot /root/.ssh/api)
list_git_url=(git@github.com:Cashik/2eden_full.git git@github.com:Cashik/2eden_ai_tasks.git git@github.com:Cashik/2eden_frontend.git git@github.com:Cashik/2eden_bot.git git@github.com:Cashik/2eden_app.git)

for i in 0 1 2 3 4; do
	cd ${list_cd_path[$i]}
	git init
	eval "$(ssh-agent -s)"
	ssh-add ${list_ssh_key_path[$i]}
	git pull ${list_git_url[$i]} master
done

