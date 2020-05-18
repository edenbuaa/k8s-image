#!/bin/bash
gcr_images1=(
gcr.io/kubeflow-images-public/ingress-setup:latest
gcr.io/kubeflow-images-public/admission-webhook:v1.0.0-gaf96e4e3
gcr.io/kubeflow-images-public/kubernetes-sigs/application:1.0-beta
gcr.io/kubeflow-images-public/centraldashboard:v1.0.0-g3ec0de71
gcr.io/kubeflow-images-public/jupyter-web-app:v1.0.0-g2bd63238
gcr.io/kubeflow-images-public/katib/v1alpha3/katib-controller:v0.8.0
gcr.io/kubeflow-images-public/katib/v1alpha3/katib-db-manager:v0.8.0
gcr.io/kubeflow-images-public/katib/v1alpha3/katib-ui:v0.8.0
gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0
gcr.io/kfserving/kfserving-controller:0.2.2
gcr.io/kubeflow-images-public/metadata:v0.1.11
gcr.io/ml-pipeline/envoy:metadata-grpc
gcr.io/tfx-oss-public/ml_metadata_store_server:v0.21.1
gcr.io/kubeflow-images-public/metadata-frontend:v0.1.8
gcr.io/ml-pipeline/api-server:0.2.5
gcr.io/ml-pipeline/visualization-server:0.2.5
gcr.io/ml-pipeline/persistenceagent:0.2.5
gcr.io/ml-pipeline/scheduledworkflow:0.2.5
gcr.io/ml-pipeline/frontend:0.2.5
gcr.io/ml-pipeline/viewer-crd-controller:0.2.5
gcr.io/kubeflow-images-public/notebook-controller:v1.0.0-gcd65ce25
gcr.io/kubeflow-images-public/profile-controller:v1.0.0-ge50a8531
gcr.io/kubeflow-images-public/kfam:v1.0.0-gf3e09203
gcr.io/kubeflow-images-public/pytorch-operator:v1.0.0-g047cf0f
gcr.io/spark-operator/spark-operator:v1beta2-1.0.0-2.4.4
gcr.io/spark-operator/spark-operator:v1beta2-1.0.0-2.4.4
gcr.io/spark-operator/spark-operator:v1beta2-1.0.0-2.4.4
gcr.io/google_containers/spartakus-amd64:v1.1.0
gcr.io/kubeflow-images-public/tf_operator:v1.0.0-g92389064
)
gcr_images2=(
gcr.io/kfserving/alibi-explainer：0.2.2
gcr.io/kfserving/logger:0.2.2
gcr.io/kfserving/sklearnserver：0.2.2
gcr.io/kfserving/xgbserver：0.2.2
gcr.io/kfserving/pytorchserver：0.2.2
gcr.io/kfserving/storage-initializer:0.2.2
gcr.io/kfserving/kfserving-controller:0.2.2
gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0
nvcr.io/nvidia/tensorrtserver:19.05-py3
)
gcr_images=(
gcr.io/kubeflow-images-public/admission-webhook:v20190520-v0-139-gcee39dbc-dirty-0d8f4c
gcr.io/kubeflow-images-public/jupyter-web-app:v0.5.0
)
docker login

for image in ${gcr_images[@]};
do
    echo "pull image:====>"$image
    docker pull $image
    tag=`echo $image |awk -F '[/]' '{print $NF}'`
    newtag="paihub/"$tag
    echo "New Tag:====>"$newtag
    docker tag $image $newtag
    echo "push:====>" $newtag
    docker push $newtag

done
