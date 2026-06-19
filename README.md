# 🛡️ Raspberry Pi IDS/HIDS Monitor (Suricata & OSSEC)

Welcome to my centralized configuration repository for a Network and Host Intrusion Detection System (NIDS/HIDS) deployed on a Raspberry Pi. This project demonstrates Infrastructure as Code (IaC) principles applied to network security.

## 📌 Project Overview
This repository serves as an automated backup and version control system for my Raspberry Pi security monitoring setup. It safely manages configuration files for **Suricata** and **OSSEC**, ensuring system stability, easy disaster recovery, and trackable configuration changes over time.

## ⚙️ Core Technologies
* **Suricata:** High-performance Network IDS, IPS, and Network Security Monitoring engine.
* **OSSEC:** Scalable, host-based intrusion detection system.
* **Bash Shell Scripting:** Custom automation for safe, one-click system backups.
* **Linux System Admin:** Cron Jobs & Logrotate for automated maintenance and log management.

## 📂 Repository Structure
The structure mimics the actual root file system of the Raspberry Pi for absolute clarity:

```text
📦 raspberry-pi-suricata
 ┣ 📂 etc/
 ┃ ┣ 📂 suricata/           # Main configurations (suricata.yaml)
 ┃ ┣ 📂 suricata-logrotate/ # Custom log rotation rules (hourly/midnight)
 ┃ ┗ 📜 crontab             # System scheduled tasks
 ┣ 📂 var/
 ┃ ┣ 📂 lib/suricata/rules/ # Custom/Local Suricata rules (local.rules)
 ┃ ┗ 📂 ossec/etc/          # OSSEC host configurations (ossec.conf)
 ┣ 📜 .pi_bashrc            # Customized bash environment and aliases
 ┗ 📜 sync-to-github.sh     # Automation script for safe GitHub synchronization
