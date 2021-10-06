# M300TGE

## Vagrant

### Die Wichtigsten Befehle 

| Befehl                    | Beschreibung                                                      |
| ------------------------- | ----------------------------------------------------------------- | 
| `vagrant init`            | Initialisiert im aktuellen Verzeichnis eine Vagrant-Umgebung und erstellt, falls nicht vorhanden, ein Vagrantfile |
| `vagrant up`              |  Erzeugt und Konfiguriert eine neue Virtuelle Maschine, basierend auf dem Vagrantfile |
| `vagrant ssh`             | Baut eine SSH-Verbindung zur gewünschten VM auf                   |
| `vagrant status`          | Zeigt den aktuellen Status der VM an                              |
| `vagrant port`            | Zeigt die Weitergeleiteten Ports der VM an                        |
| `vagrant halt`            | Stoppt die laufende Virtuelle Maschine                            |
| `vagrant destroy -f`      | Stoppt die Virtuelle Maschine und zerstört sie.                   |


### Vagrant Boxen

Die Vagrant Boxen sind die vorkonfigurierten VMs auf denen Vagrant aufbaut. Hier sind die verschiednen Boxen zu finden [Vagrant Boxen-Plattform](https://app.vagrantup.com/boxes/search)
Man wählt sich die gewünschte Box mit dem genünschten OS aus und installiert sie lokal mit folgenden Befehl:
`vagrant box add [box-name]`
Bsp. `vagrant box add debian/jessie64` 


## GIT

| Befehl                    | Beschreibung                                                      |
| ------------------------- | ----------------------------------------------------------------- | 
| `git pull`                | Hohlt sich von einem bestehenden repository die aktuellen infos(Files, Ordner) |
| `git add *`               | Nach dem man die änderungen vorgenommen hat kann man sie mit add hinzufügen|
| `git commit ""`           | Mit Git Commit fügt man noch ein Kommentar hinzu und bestätigt.                  |
| `git push`                | Push endgültig alle änderung auf den Server.                   

## Docker
Die Verwendung von docker besteht darin, eine Kette von Optionen und Befehlen zu übergeben, gefolgt von Argumenten. Die Syntax übernimmt diese Form:
```
$ docker [option] [command] [arguments]
```
Um alle verfügbaren Unterbefehle zu sehen, geben Sie Folgendes ein:
```
$ docker
```

|Befehl          |Bedeutung
|:---------------|:---------------------------------------------------------------|
|attach            |Attach local standard input, output, and error streams to a running container|
|build             |Build an image from a Dockerfile|
|commit            |Create a new image from a container's changes|
cp                |Copy files/folders between a container and the local filesystem
create            |Create a new container
diff              |Inspect changes to files or directories on a container's filesystem
events            |Get real time events from the server
exec              |Run a command in a running container
export            |Export a container's filesystem as a tar archive
history           |Show the history of an image
images            ||List images
import            |Import the contents from a tarball to create a filesystem image
info              |Display system-wide information
inspect           |Return low-level information on Docker objects
kill              |Kill one or more running containers
load              |Load an image from a tar archive or STDIN
login             |Log in to a Docker registry
logout            |Log out from a Docker registry
logs              |Fetch the logs of a container
pause             |Pause all processes within one or more containers
port              |List port mappings or a specific mapping for the container
ps                |List containers
pull              |Pull an image or a repository from a registry
push              |Push an image or a repository to a registry
rename            |Rename a container
restart           |Restart one or more containers
rm                |Remove one or more containers
rmi               |Remove one or more images
run               |Run a command in a new container
save              |Save one or more images to a tar archive (streamed to STDOUT by default)
search            |Search the Docker Hub for images
start             |Start one or more stopped containers
stats             |Display a live stream of container(s) resource usage statistics
stop              |Stop one or more running containers
tag               |Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
top               |Display the running processes of a container
unpause           |Unpause all processes within one or more containers
update            |Update configuration of one or more containers
version           |Show the Docker version information
wait              |Block until one or more containers stop, then print their exit codes

#### Weitere Befehle
##### Alle Images entfernen
```
$ docker rmi $(docker images -a -q)
$ docker rm $(docker ps -a -f status=exited -q)
```

## Lerndokumentation

### 22.09.21

Heute haben wir LB2 abgeschlossen und abgegeben. Danach haben wir mit dem Thema Containter gestartet. Im modul arbeiten wir mit der Containerumgebung Docker. Wir wollen Docker im zusammenspiel mit Docker verwenden. 

Wir hatten vom Lehrer eine ausführliche Einführung zu Container. Dabei sollten wir den unterschied zweischen VMS und Container kennenlernen und das Prinzip von Container verstehen. 
### Wissenstand

Ich hatte bereits von Docker und Container gehört und in etwa gewisst was es ist. Jedoch hatte ich noch nie damit gearbeitet oder intensiv beschäftigt. Ich konnte dadurch viel dazu Lernen. Das ganze war nicht einfach zu verstehen jedoch 

### Probleme

Ich hatte probleme mit dem Image auf Docker zu registiren in der NodeJS übung. 


## Technische Angaben
***
### VMS
| Server | Aufgbae |
|:-:|-|
| nextcloud-1 | Nextcloud|
| nextcloud-2 | Nextcloud mit Proxy und Backup |

### Test
***
 Nr. | Beschreibung | Kontrollie | Soll-Situation | Ist-Situation | Bestanden? |
|:-:|-|-|-|-|:-:|
| 1 | `nextcloud-1` sollte ubuntu-ldap pingen | ping 192.168.100.10  | ping funktioniert| ping funktioniert | Y |
| 2 | `nextcloud-2` PhPmyadmin funktioniert? via IP Zugriff | http://192.168.100.11/phpmyadmin/ | Zugriff erfolgreich | Zugriff erfolgreich | Y |
| 3 | `nextcloud-1` Apache Server funktioniert? via IP Zugriff | http://192.168.100.12 | Zugriff erfolgreich | Zugriff erfolgreich | Y |
| 4 | `nextcloud-2` Apache Server funktioniert? via Port Zugriff | http://localhost:8012/ | Zugriff erfolgreich | Zugriff erfolgreich | Y |
| 5 | `nextcloud-1` Zugriff SSH | vagrant ssh ubuntu-ldap | Zugriff erfolgreich | Zugriff erfolgreich | Y |
| 6 | `nextcloud-2` Zugriff phpldapadmin | http://192.168.100.10/phpldapadmin/ | Zugriff erfolgreich | Zugriff erfolgreich | Y |
| 7 | `nextcloud-1` Create Database via mysql shell | vagrant ssh<br>mysql -uroot -proot<br>create databse rocket<br>show databases; | Datenbank erstellt | Datenbank erstellt | Y |
| 8 | `nextcloud-2` Create Database via phpmyadmin  | http://192.168.100.10/phpmyadmin/ | Datenbank erstellt | Datenbank erstellt | Y |


## Reflexion


Da das ganze Container/Docker Thema neu für mich war, hatte ich anfangs etwas schwirigkeiten alles zu verstehen und mich zurecht zu finden. Ich startet mit den beiden Übungen auf Teams. Bei der NodeJS hatte ich etwas Probleme was mich viel Zeit gekostet hat. 

Danach haben ich und Sangeeth gestartet etwas eigenes umzusetzen. Wir habe und dazu entschieden Nextcloud zu Containern da wir dies für unsere StartUp welches wir in Wirtschaft gegründet haben brauchen können. Die zusammenarbeit lief dabei sehr gut. Wir konnten gut arbeiten und haben uns gut ergänzt und kamen voran. 







