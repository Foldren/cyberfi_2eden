## Управление:

* ### Добавление submodule:
  1. Ввести `git submodule add --force --name module_name github_url module_name`

* ### Внесение изменений в submodule(s)
  1. Открыть терминал в папке модул(я|ей).
  2. Ввести `git add .; git commit -m "commit_descr";`
  3. Открыть терминал в корневой папке.
  4. Ввести `git add .; git commit -m "commit_descr"; git push --recurse-submodules=on-demand  `