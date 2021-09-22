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
***
* Server mit den neusten Sicherheitspatches installiert
* Systeme Passwortgeschützt
* UFW Firewall aktivieren
* Zugang nur via SSH

#### Firewall
sudo apt-get install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw allow 22
sudo ufw allow 80
sudo ufw enable


#### Fail2Ban installiert
fail2ban ist ein Set aus Client, Server und Konfigurationsdateien, welches Logdateien überwacht, dort nach vordefinierten Mustern sucht und nach diesen temporär IP-Adressen sperrt. Ziel des Programms ist, alle Serverdienste gegen Angriffe des Typs Denial of Service (DoS) abzusichern.
```
    $sudo apt-get install fail2ban -y
```

## Backup

### ISCSI
ISCSI ist ein verfahren um Laufwerke mit einem host zu verbinden. Wir benötige um die Luns des Backups speicher zu verbinden. 
```
    sudo apt-get install open-iscsi
```

### xfsprogs
Das Datei system des Backups speicher ist xfs. Daher muss auf dem Backup server xfsprogs installiert werden sodass er die Dateien lesen und schreiben kann.
```
    sudo apt-get install xfsprogs
```

## Reflexion

Vor diesem Projekt hatte ich noch nie etwas von Vagrant gehört, es war sehr neu für mich. Am Anfang hatte ich ein bisschen Mühe. Ich hab viel herumprobiert und getestet bis ich einwenig reingekommen bin. Am Anfang habe ich die Dokumentation etwas vernachlässigt oder besser gesagt vergessen. In der Dokumentation habe ich einen Spickzettel für Befehle gemacht, damit ich ein bisschen den Überblick habe, was welcher Befehl macht.

Am Anfang wollte ich ein Projekt mit Windows machen leider funktionierte es nicht so wie gewollt. Nach dieses Fehlschlägen habe ich mich für ein Projekt mit Debian entschieden. Umgesetzt habe ich diese für mein Betrieb da dies genau dort auch eingesetzt werden kann. 

Beim arbeiten dieses Projektes habe ich fast nie mit Git bash gearbeitet nur mit VS, Virtualbox und Github Desktop, der Vorteil beim VS Code man kann alles in einem machen ich konnte im VS einen Terminal aufmachen und dort die Befehle ausführen oder die Dateien ins Respository pushen.

Beim Lernfortschritt habe ich sehr vieles in Vagrant gelernt, und den umgang mit Linux konnte ich auch noch verbessern.










