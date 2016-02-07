This collection of files should

1. Bring up three machines using vagrant
2. Add a compiled go app to two of them
3. Install nginx on one of them
4. Configure nginx to point at the app in a round robin fashion

This is an experiment in using both Chef and Vagrant (I'm much more of a docker or even puppet person myself! Even powershell scripts are a new(ish) domain compared to my lovely bash scripts!)

To start the process:
* ps> .\startup.ps1

Assumptions of machine state:
* ChefDK installed
* Vagrant installed
* Ruby installed
