This collection of files should

1. Bring up three machines using vagrant                          -- 2/3
2. Add a go app to two of them                                    -- 1/2
3. Install nginx on one of them                                   -- done
4. Configure nginx to point at the app in a round robin fashion   -- 1/2

This is an experiment in using both Chef and Vagrant (I'm much more of a docker or even puppet person myself!)

To start the process:
```chmod +x startup.sh
./startup.sh```

Assumptions of machine state:
* ChefDK installed
* Vagrant installed
* Ruby installed
* Virtual Box installed - for virtual machines
* Go installed on host system - should not be compiling code on the nodes...
