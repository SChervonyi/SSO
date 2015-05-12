How to install:
1) Create 'SitecoreSSO' database from Sitecore.sql script.
2) Configure connection string in Web.config of MainSSO project and WebClient1.
3) Add servers to IIS (http://localhost/MainSSO		http://localhost/WebClient1		http://localhost/WebClient2).

User Guide:
1) Go to http://localhost/WebClient1 and log in (user: Master password: master or user: Slave password: slave)
2) Go to http://localhost/WebClient2 and you alreade logged in.

Notes:
1) Committed with binary files so it doesn't need build and nuget update.
2) I know that it's copy-paste in AccountModels and InitializeSimpleMembershipAttribute but I didn't want create new project and move all it to some just for two classes. And maybe it ain't the best idea move AccountModels to core because that could use different databases.
3) Single Sign On implemented by same machineKey.
4) For 'Master' user role is 'master' and for 'Slave' role is 'slave'
5) WebClient1 is main client (there use roles). WebClient2 just for test SSO.