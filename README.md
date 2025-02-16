## Team Fortress 2 + Competitive + Docker for Pterodactyl

Docker image for a competitive tf2 server setup for use with the [pterodactyl](https://pterodactyl.io/) game server management panel.

Add a TF2 game server in your panel as normal and set the Image field in Docker Image Configuration under the Startup tab of your server to:

```
ghcr.io/tashvelocity/docker-comp-server:master
```

Once your server is installed, navigate to /home/container/tf/cfg/ and edit the server.cfg file to setup the various plugins (logs.tf, demos.tf, etc.).

You may also want to configure the autoexec plugin settings to match your preferred mode and league from the defaults:
sm_autoexec_league "ugc"
sm_autoexec_mode "9v9"

The server image comes with the etf2l and ugc configs and a set of usefull sourcemod plugins

## Addons and Plugins

- MetaMod:Source
- SourceMod
- SOAP-DM
- MedicStatus
- SupStats
- LogsTF
- Pause
- RecordSTV
- WaitForSTV
- AFK
- RestoreScore
- FixStvSlot
- Updater
- [WebRCON](https://github.com/spiretf/webrcon)
- [whitelist.tf downloader](https://github.com/spiretf/sm_whitelist)
- [missing map downloader](https://github.com/spiretf/mapdownloader)
- [Demos.tf](https://demos.tf)
- [autoexec](https://github.com/spiretf/autoexec)
- [ProperPregame](https://github.com/AJagger/ProperPregame)
- [tf2-comp-fixes](https://github.com/ldesgoui/tf2-comp-fixes)

Based on the [docker-comp-server](https://github.com/spiretf/docker-comp-server) repo and docker image created by [icewind1991](https://github.com/icewind1991) and [Gonzih](https://github.com/Gonzih). 
Server.cfg.template based on the one included in [tf2-servers](https://github.com/melkortf/tf2-servers).
