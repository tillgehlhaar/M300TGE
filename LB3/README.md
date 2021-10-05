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

### 25.08.21

Wir starteten heute in den BIST Kurts und somit in das Modul 300. Zum start haben wir unsere Arbeitsumgebung eingerichtet mit folgenden komponenten: 

* GitHub 
* Git Client
* VirtualBox
* Vagrant
* Visual Studio Code
  
Wir lerntet danach durch eine kurze einführung das Tool Vagrant kennen. Mit dem Tool kann man VMs per Skript automatisch erstellen und konfigurieren. Bis her kannte ich diese möglichkeit nicht. Ich habe bisher aufwändig alles einzel von Hand konfiguriert. Ich habe heute viel herum probiert und verschiedene VMs mit einem Vagrant file erstellt. Als Projekt dachte ich mir etwas mit Windwos Server zu machen da wir dies im GEschäft gut brauchen könnten. Dies hat jedoch nicht korrekt funktioniert. 

### Wissensatand

Bisher habe ich schon öfters mit Virtualisierung gearbeitet und auch einwenig erfahrung mit Linux. Die Tools Git und VisulStudio habe ich in vergangenheit auch schon öfters genutzt. Was mir heute komplett neu war, ist Vagrant.

### Probleme

Windows VM erstellen 

### 08.09.21

Da ich es nicht hinbekommen habe Windows VMs aufzusetzen und ich vergangen Woche, im Geschäft meherer Debian 10 maschinen aufsetzten musste und genau gleich konifuriert habe von hand, wollte ich genau dies automatisieren. 
Ich erstellen in meinem Vagrant File also 4 identische Debian Backup Server. Darauf erstelle ich eine grund konfiguration die überall gleich ist. 
 

### Wissensatand

Ich konnte eingies Lernen über Vagrant und welche möglichkeiten es damit gibt. Ausserdem habe ich neue Linux befehele kennengelernt. Wie z.B. sed. 

### Probleme

Nichts besonderes.


## Sicherheitsaspekte



#


## Netzwerkplan
***



## Reflexion










