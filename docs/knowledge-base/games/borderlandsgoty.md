Table of Contents

[TOC]

---

# Fix CO-OP lag
> **Note**: Make sure you launched the game at least once before, because the game will create a config file in your documents folder

1. Go to `C:\Users\<YourUserName>\Documents\My Games\Borderlands GOTY Enhanced\`
2. Open `WillowEngine.ini` with a text editor
3. Under `[IpDrv.TcpNetDriver]` change:
```ini
MaxClientRate=20000
MaxInternetClientRate=20000
NetServerMaxTickRate=60
LanServerMaxTickRate=60
```

4. Under `[Engine.DemoRecDriver]` change:
```ini
NetServerMaxTickRate=60
LanServerMaxTickRate=60
```

5. Under `[VoIP]` change:
> **Note**: Game's voice chat is sending abnormal amount of data, so it's better to disable it. Use Discord or TeamSpeak instead

```ini
bHasVoiceEnabled=False
```
