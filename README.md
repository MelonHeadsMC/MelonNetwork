# EaglercraftX Docker for Render

This Docker setup runs **EaglerXBungee** on Render and links directly to your **existing Spigot server** (FreezeHost).

## Setup

1. Deploy this repository to Render as a **Web Service → Docker**.
2. Set Environment Variables in Render:
   - `SERVER` (your FreezeHost IP:PORT)
   - `MOTD` (server message)
   - `MAX_PLAYERS` (maximum players)
3. Deploy → your Eaglercraft server is live!

No Waterfall or local Spigot needed.

