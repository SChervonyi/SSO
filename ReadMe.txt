How to install:
1) Create 'SingleSignOn' database from CreateDB.sql script.
2) Configure connection string in Web.config of MainSSO project and WebClient1.
3) Download NuGet packages and build solution.
4) Add servers to IIS (http://localhost/MainSSO		http://localhost/WebClient1		http://localhost/WebClient2).

User Guide:
1) Go to http://localhost/WebClient1 and log in (user: Master password: master or user: Slave password: slave)
2) Go to http://localhost/WebClient2 and you alreade logged in.

Notes:
1) I know that it's copy-paste in AccountModels and InitializeSimpleMembershipAttribute but I didn't want create new project and move all it to some just for two classes. And maybe it ain't the best idea move AccountModels to core because that could use different databases.
2) Single Sign On implemented by same machineKey.
3) For 'Master' user role is 'master' and for 'Slave' role is 'slave'
4) WebClient1 is main client (there use roles). WebClient2 just for test SSO.