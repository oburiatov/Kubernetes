# NiFi
## How this deployment works
In order to integrate NiFi to Kubernetes it is necessary to build initial container for basic files (such as "script.sh" etc.) and then deploy basic pod.<br>
1. Build your own initial image, using dockerfile.
2. Tag and push image to container registry.
3. Build your own core image, using dockerfile.
4. Tag and push image to container registry.
5. Deploy application