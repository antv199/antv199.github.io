# Securing my website

## I'm sorry, why?

Mostly because I want:

A. to learn </br>
B. I want to use it for my own self-hosted stuff and my portofolio </br>

## Cloudflare as a giant firewall

One of the biggest benefits of having Cloudflare intercept traffic is that they have the bandwidth to deal with DDOS attacks. And, the tools and the limitations you are given on the free tier, compared to the competition, are actually very generous.

When securing a website, my opinion is that you should operate with the least-privileged model. Block everything and everyone and add the things you need slowly after.

## Cloudflare Tunnels

## mTLS

## Cloudflare Workers as Relays

One of the biggest advantages of Cloudflare's Workers (or even Fastly's Compute) is that they are running at the edge, closest to the user by default.

Let's say, a user is accessing a worker (either from it's designated URL or linked to a with a domain you manage) from Sydney, Australia. Cloudflare will run it from the Sydney data center (since it's closest to the user) and since the website and services I self-host are managed and proxied over Cloudflare's network, everything is proxied over quickly. User talks quickly to the Worker, Worker talks to my self-hosted service, my service talks back to it and the content gets relayed to the user.

```
Server <-----> Cloudflare Tunnel <-----> Cloudflare Workers <-----> User
```

The reason why someone might do this is, mostly, for connection stability. Of course, it goes without saying, that you should really consider if whatever you are hosting is in line with Cloudflare's TOS. I only host a FreshRSS, ntfy and a secrets service, so it's not a problem for me. </br> </br>
But, if you are planning on using it for Jellyfin or anything media heavy, don't.
