boomstarter
===========

Hi!
Достаточно просто поставить chef-solo и перейти в директорию chef-repo в данном репозитории.
После чего, можно по очереди исполнять cookbooks при желании можно использовать web.json, предварительно вписав порядок исполнения cookbooks.
Сначала должна установиться java, затем elasticsearch, затем iptables.

iptables настраивается примерно следующим образом:

-A INPUT -p tcp -s $ALLOWEDHOSTS --dport 9200 -j ACCEPT
-A INPUT -p tcp --dport $PORT -j DROP

лежит тут
cookbooks/iptables/templates/default/all_established.erb
