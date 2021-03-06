# Summary
This deployment runs 2 nsq clusters. One cluster running in say for example k8s and another clustering running on VMs outside of k8s.   

Assuming you can not route or resolve pod names from your VMs to your nsqd pods running in K8s, you can run `nsq_to_nsq` to re-publish messages from nsq topics running in the k8s cluster to a set of nsqd VMs. 

## Topology
* The following are nsq components running in the "K8s" cluster:  
  * `nsqlookupd` - Manages nsq topology information     
  * `nsqadmin` - Check topics, channels, etc. [Web ui](http://localhost:4171)  
  * `nsqd` - nsqd instance  
  * `producer` - Publishes messages to the `test` topic     
* The following are nsq components running in the "VM" cluster:  
  * `nsqlookupd` - Manages nsq topology information  
  * `nsqadmin` - Check topics, channels, etc. [Web ui](http://localhost:4172)  
  * `vm-nsqd-1` - nsqd "VM"  
  * `vm-nsqd-2` - nsqd "VM"  
  * `bridge` - Runs `nsq_to_nsq`.  See command in `docker-compose.yaml` for more info.  


## Running
`docker-compose up -d` This will start all of the services above.  

Once the services are up and running you can see the "k8s" cluster nsq info [here](http://localhost:4171) and the "vm" cluster nsq info [here](http://localhost:4172).