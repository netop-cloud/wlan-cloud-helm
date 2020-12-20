gcloud filestore instances create nfs-server \
    --project=netop-engineering \
    --zone=us-central1-a \
    --tier=STANDARD \
    --file-share=name="vol1",capacity=1TB \
    --network=name="default",reserved-ip-range="10.0.0.0/29"