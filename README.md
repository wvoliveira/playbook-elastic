# Playbook elastic

Configure and tuning Elasticsearch hosts.

Works in theses clusters:

- [x] master.* (for manager cluster)
- [x] data.* (for storage data)
- [x] proxy.* (for forward requests)

Pay attention: This playbook doesnt install elasticsearch or jdk packages AND doesnt reboot ES or host!!  
Some configs needs reboot service for works!

Tested:

- CentOS-7.6
- Elasticsearch-6.7.0 (xpack basic)
- jdk1.8 (Oracle)

## Learnings

- If you clone VM, remember to delete the path contents /var/lib/elasticsearch/nodes/*

## References

- Download elastic-oss: <https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.7.0.rpm>
- API: <https://www.elastic.co/guide/en/elasticsearch/reference/6.7/cluster.html>
- Examples:
  - cluster stats:          curl -X GET "`<host address>`:9200/_cluster/stats?human&pretty"
  - cluster pending tasks:  curl -X GET "`<host address>`:9200/_cluster/pending_tasks"

## Examples how execute

Check syntax: `ansible-playbook -i production microservices.yml --syntax-check`  
If root user run: `ansible-playbook -u root -i production microservices.yml`  
If sudo run: `ansible-playbook -b -i production microservices.yml`

## Check facts from OS

Run: `ansible -u root -k -i "<hostname or address>," -m setup <hostname or address>`
