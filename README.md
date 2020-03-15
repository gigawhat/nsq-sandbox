# Summary
Repo for testing different nsq deployments.

## Producer
All of the deployments share the same producer. The producer is a simple script that publishes a message once every .5 second to the `test` topic.  

The producer will default to publishing 1000 messages. This can be changed by setting the environment variable `MSGS` to the number of messages you'd like to publish.  

You can also set `FOREVER` to `"true"`. With this set the publisher will never stop publishing messages to the topic. This is handy when you want to scale up/down the number of nsqd, etc instances.

## Running
`cd` to the directory of the topology you want to test, then run `docker-compose up -d`. When do testing run `docker-compose down`.  

See the README in the topology dir for more info.  