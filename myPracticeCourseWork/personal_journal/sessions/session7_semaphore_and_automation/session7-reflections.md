[Personal Learning Record](../../personal_journal/personal_journal.md) | [Session Notes](../sessions/README.md) 

# Session 7

## Topics covered
*What topics were covered in this session*
- **Exercise 7.1:** OpenNMS Horizon with a Minion and SNMP agents, run in Docker Compose.
- **Exercise 7.2:** Semaphore UI running Ansible playbooks from a Git repository against AlmaLinux and Ubuntu containers.
- Compose secrets, post-start hooks and SSH agents.


## Personal Notes and research following this session
*Which class sessions and personal research refers to technology in this proposal. Link to examples.*
* A Minion monitors devices that Horizon cannot reach, works behind firewalls and NAT, and copes with overlapping IP ranges (OpenNMS n.d.b). This fits one Minion per regional office.
* Prometheus collects metrics with a pull model over HTTP (Prometheus n.d.). It is lighter, but head office would need a route into every office.
* Semaphore UI is a self-hosted web UI and API for Ansible. It keeps credentials encrypted and records who ran what and when (Semaphore UI n.d.a). Integrations can start a template from a GitHub/GitLab webhook (Semaphore UI n.d.b).
* Post-start hooks run after a container starts, with no set timing (Docker n.d.g).
* `.gitattributes` with `*.sh text eol=lf` keeps shell scripts in LF line endings on Windows (Git n.d.).


## Exercises and results
*What exercises did you complete. What results. Screen shots and notes*
**7.1 – OpenNMS**
* `docker compose up -d` started Horizon 33.1.6, PostgreSQL, minion1 and four net-snmp agents on two networks (172.20.0.0/24 and 172.20.2.0/24).
* `ping` from horizon to netsnmp_1_1 (172.20.0.101) gave 0% loss. `ping` from minion1 to netsnmp_2_1 (172.20.2.101), a network Horizon is not on, also gave 0% loss.
* `docker compose ps`: horizon healthy, minion1 **unhealthy**.
* The web UI at localhost:8980 asked me to change the default admin password. The dashboard showed 1 node, 0 outages and 100% availability, so the SNMP agents had not yet appeared as nodes.

**7.2 – Semaphore**
* The first `up -d` warned that the secret files did not exist. The containers then failed with "semaphore hook exited with status 2: ': No such file or directory'".
* I re-saved the share scripts (line endings) and fixed the project JSON. After `docker compose down -v` and `up -d`, all four containers started.
* Every task cloned my GitHub fork first, then ran the playbook. Results:

| Task | Template | Result |
|---|---|---|
| #2 | load-ssh-password | `failed=0` |
| #5 | install-apache (key) | `changed=0`, because Apache was already installed |
| #6 | uninstall-apache | `changed=1` |
| #7 | install-apache-with-pass | `changed=2` / `changed=1` |
| #8 | uninstall-apache-with-pass | `changed=1` |

- Project B stores `ansible_ssh_pass` in the inventory, in Git. The Compose file holds the Semaphore admin password and encryption key in plain text.


## Summary of learning
*What did you learn through these exercises*
* Semaphore made Git the source of the configuration: nothing was edited on the managed hosts. Runs were still started by hand, so CR7 (automatic update from Git) is only partly met until a webhook is tested.
* Re-running the install task gave `changed=0`, so this role is idempotent, unlike Session 4.
* The automation server becomes the most valuable target: it held one shared Ansible key and plain-text secrets.
* The same CRLF problem as Session 4 came back. A repo-wide `.gitattributes` rule would stop it for good.
* Monitoring "running" is not monitoring "working": the Minion was unhealthy and no devices were discovered yet.
