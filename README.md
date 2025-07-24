# ft_irc# ft_irc

> 🧠 42 Network project — A lightweight Internet Relay Chat (IRC) server written in C++98.

## 📚 Description

`ft_irc` is a custom implementation of an IRC server built as part of the 42 curriculum. It simulates a simplified version of the IRC protocol that allows multiple clients to connect, authenticate, join channels, and communicate in real-time.

This project helps to deepen understanding of networking, socket programming, client-server architecture, and C++ object-oriented design.

---

## 🚀 Features

- TCP server that handles multiple clients via non-blocking I/O
- User registration and authentication using passwords
- Basic IRC commands like:
  - `/NICK`, `/USER`
  - `/JOIN`, `/PART`, `/PRIVMSG`, `/NOTICE`
  - `/KICK`, `/TOPIC`, `/INVITE`, `/MODE`
- Channel and user management
- Error handling with informative messages
- Clean modular design using C++98

---

## 🛠️ Build Instructions

### 🔧 Requirements

- **C++ compiler** (supports `-std=c++98`)
- **Make**
- Tested on: Linux (Ubuntu), macOS

### 🧪 How to Build

```bash
git clone https://github.com/Ali-Fayad/ft_irc.git
cd ft_irc
make
