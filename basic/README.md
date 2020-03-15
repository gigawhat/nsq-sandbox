# Summary
Basic nsq deployment.

## Topology
`nsqlookupd` - Manages nsq topology information.   
`nsqadmin` - Check topics, channels, etc. [Web ui](http://localhost:4171)
`nsqd` - Nsqd service.  
`producer` - Publishes messages to the `test` topic. Connects to the nsqd service.  
`consumer` - Runs the `nsq_to_file` utility. Consumes messages from the `test` topic and writes them to a file in the `./output` directory.  

## Running
`docker-compose up -d`  This will start all of the services above.