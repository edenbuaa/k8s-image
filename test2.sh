gsutil cp gs://kfserving-samples/models/sklearn/iris .
gsutil cp gs://kfserving-samples/models/tensorflow/flowers .




k8s_images=(
registry.cn-hangzhou.aliyuncs.com/google_containers/kube-scheduler:v1.15.1
registry.cn-hangzhou.aliyuncs.com/google_containers/kube-controller-manager:v1.15.1
registry.cn-hangzhou.aliyuncs.com/google_containers/kube-proxy:v1.15.1
registry.cn-hangzhou.aliyuncs.com/google_containers/kube-apiserver:v1.15.1
quay.io/coreos/etcd:v3.3.10
registry.cn-hangzhou.aliyuncs.com/google_containers/pause:3.1
coredns/coredns:1.6.0
calico/kube-controllers:v3.7.3
weaveworks/weave-kube:2.5.2
weaveworks/weave-npc:2.5.2
nginx:1.15
mirrorgooglecontainers/cluster-proportional-autoscaler-amd64:1.6.0
googlecontainersmirrors/pause-amd64:3.1
)

cert_manager=(
quay.io/jetstack/cert-manager-webhook:v0.15.1
quay.io/jetstack/cert-manager-cainjector:v0.15.1
quay.io/jetstack/cert-manager-controller:v0.15.1
)

kf_istio_knative=(
istio/pilot:1.3.6
istio/proxyv2:1.3.6
paihub/autoscaler-hpa:knative-v0.12.0
paihub/webhook:knative-v0.12.0
paihub/activator:knative-v0.12.0
paihub/autoscaler:knative-v0.12.0
paihub/controller:knative-v0.12.0
paihub/istio:knative-v0.12.0
paihub/queue:knative-v0.12.0
prom/prometheus:v2.2.1
quay.io/prometheus/node-exporter:v0.15.2
quay.io/coreos/kube-rbac-proxy:v0.3.0
paihub/kfserving-controller:v0.3.0
paihub/storage-initializer:v0.3.0
)

knative_monitor=(
prom/prometheus:v2.2.1
quay.io/prometheus/node-exporter:v0.15.2
quay.io/coreos/kube-rbac-proxy:v0.3.0
paihub/kfserving-controller:v0.3.0
paihub/storage-initializer:v0.3.0
)
model_server=(
tensorflow/serving:1.14.0
tensorflow/serving:1.14.0-gpu
paihub/onnxruntime/server:v0.5.1
paihub/sklearnserver:v0.3.0
paihub/xgbserver:v0.3.0
paihub/pytorchserver:v0.3.0
paihub/pytorchserver:v0.3.0-gpu
paihub/tensorrtserver:19.05-py3
)

metrics_image=(
quay.io/coreos/kube-state-metrics:v1.7.2
grafana/grafana:6.3.3
)

load_balancer=(
metallb/speaker:v0.9.3
metallb/controller:v0.9.3
)

for image in ${load_balancer[@]};
do
        tag=`echo $image |awk -F '[/]' '{print $NF}'`
        saveName=$tag".tar"
        if [ "$ACTION" = "pull" ]; then
                echo "pull image:====>"$image
                docker pull $image
                echo "Save Name:====>"$saveName
                docker save -o $saveName $image
                docker rmi -f $image
        fi

        if [ "$ACTION" = "push" ]; then
                newtag=`echo ${image/'registry.cn-hangzhou.aliyuncs.com/'/''}`
                newtag=`echo ${newtag/'quay.io/'/''}`
                pushtag="172.25.254.56/"$newtag
                #docker load -i $saveName
                #docker tag $image $pushtag
                #docker push $pushtag
                echo 'push done:======'$pushtag
                #docker rmi -f $image
                #docker rmi -f $pushtag

        fi
done
