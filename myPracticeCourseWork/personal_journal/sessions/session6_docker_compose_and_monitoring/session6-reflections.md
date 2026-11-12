[Personal Learning Record](../../personal_journal/personal_journal.md) | [Session Notes](../sessions/README.md) 

# Session 6

## Topics covered
*What topics were covered in this session*
* Compose files: services, networks, volumes, `.env` variables, build vs pull.
* WordPress with MariaDB, and an NGINX load balancer with HTTPS.


## Personal Notes and research following this session
*Which class sessions and personal research refers to technology in this proposal. Link to examples.*
* Compose waits for a dependency to be running, not ready (Docker n.d.b), which is why the example uses a fixed delay.
* NGINX balances round-robin by default (NGINX n.d.).
* RFC 8996 says TLS 1.0 and 1.1 must not be used (Moriarty and Farrell 2021).
* Hard-coded passwords are one of the most common security smells in IaC scripts (Rahman, Parnin and Williams 2019).


## Exercises and results
*What exercises did you complete. What results. Screen shots and notes*
- **6-1:** `docker compose build` + `up -d` started apache-1/apache-2; `curl -I` returned HTTP 200 on 8081 and 8082.
- **6-2:** one service took its image tag from `.env` and the other used `latest`, so two different image versions ran for the "same" service.
- **6-3:** "Pool overlaps with other one on this address space". The fixed subnet clashed with an existing Docker network. Changing it to 172.26.0.0/24 fixed it.
- **6-4:** HTTPS through NGINX to three WordPress containers; the logs showed requests reaching wordpress1, 2 and 3. Problems found: TLS 1.0/1.1 allowed, a self-signed certificate, and plain-text passwords in the file. `docker compose down -v` deleted the data volumes.


## Summary of learning
*What did you learn through these exercises*
* One reviewed file replaced many `docker run` commands, but the file itself became a security risk.
* Container subnets must come from the company address plan.
* `-v` deletes data, so production volumes need backups.
