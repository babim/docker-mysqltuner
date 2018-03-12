#Usage
This container will always pull the latest version of MySQLTuner. The following will get you started:
```
docker run -it --rm babim/mysqltuner --host <hostname> \
> --user <username> \
> --pass <password> \
> --forcemem <size>
```
Since this docker container will always be communicating with a remote MySQL instance, the --forcemem option must be used to specify the RAM on the external server.

For a list of all MySQLTuner options, run: `docker run -it --rm owski/mysqltuner --help`
```
Name:
     MySQLTuner 1.7.4 - MySQL High Performance Tuning Script

Important Usage Guidelines:
    To run the script with the default options, run the script without
    arguments Allow MySQL server to run for at least 24-48 hours before
    trusting suggestions Some routines may require root level privileges
    (script will provide warnings) You must provide the remote server's
    total memory when connecting to other servers

Connection and Authentification:
     --host <hostname>           Connect to a remote host to perform tests (default: localhost)
     --socket <socket>           Use a different socket for a local connection
     --port <port>               Port to use for connection (default: 3306)
     --user <username>           Username to use for authentication
     --userenv <envvar>          Name of env variable which contains username to use for authentication
     --pass <password>           Password to use for authentication
     --passenv <envvar>          Name of env variable which contains password to use for authentication
     --ssl-ca <path>             Path to public key
     --mysqladmin <path>         Path to a custom mysqladmin executable
     --mysqlcmd <path>           Path to a custom mysql executable
     --defaults-file <path>      Path to a custom .my.cnf

Performance and Reporting Options:
     --skipsize                  Don't enumerate tables and their types/sizes (default: on)
                                 (Recommended for servers with many tables)
     --skippassword              Don't perform checks on user passwords(default: off)
     --checkversion              Check for updates to MySQLTuner (default: don't check)
     --updateversion             Check for updates to MySQLTuner and update when newer version is available (default: don't check)
     --forcemem <size>           Amount of RAM installed in megabytes
     --forceswap <size>          Amount of swap memory configured in megabytes
     --passwordfile <path>       Path to a password file list(one password by line)

Output Options:
     --silent                    Don't output anything on screen
     --nogood                    Remove OK responses
     --nobad                     Remove negative/suggestion responses
     --noinfo                    Remove informational responses
     --debug                     Print debug information
     --dbstat                    Print database information
     --idxstat                   Print index information
     --sysstat                   Print system information
     --pfstat                    Print Performance schema
     --bannedports               Ports banned separated by comma(,)
     --maxportallowed            Number of ports opened allowed on this hosts
     --cvefile <path>            CVE File for vulnerability checks
     --nocolor                   Don't print output in color
     --json                      Print result as JSON string
     --buffers                   Print global and per-thread buffer values
     --outputfile <path>         Path to a output txt file
     --reportfile <path>         Path to a report txt file
     --template   <path>         Path to a template file
     --verbose                   Prints out all options (default: no verbose)
```
