Workaround to run the cluster on Netop GCP 

1. Created storage PV for each service - use create_all.sh
2. For Portal shared storage needed - use NFS storage: use create_file_share.sh for this
3. Use dev-netop.yml in resources/environments 
4. Change LoadBalancer service type in portal service
