docker login

# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:3932262d4a44284f142f4c49f707526e70dd86317163a88a8cbb6de035a401a9  | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/queue:knative-v0.12.0
# docker push paihub/queue:knative-v0.12.0
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:e9b96a4839e9a59389050dca381c52f4d3a84fa4a8683161c29b450277283d66  | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/activator:knative-v0.12.0
# docker push paihub/activator:knative-v0.12.0
# 
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:fa0d5fda9d1eb6afde9b3f9523ca2e096c7fb8e733a47d424dda208b1f1585f7  | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/autoscaler:knative-v0.12.0
# docker push paihub/autoscaler:knative-v0.12.0
# 
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:a7358e4600ae00bf976dba9c299c3dcd7bd0473e18ff334dde35ba0f6535663b   | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/controller:knative-v0.12.0
# docker push paihub/controller:knative-v0.12.0
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:4528b0a54dd4ec91f0398856216b24532566618340c7ef6fd00345b776fb2c10   | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/webhook:knative-v0.12.0
# docker push paihub/webhook:knative-v0.12.0
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler-hpa@sha256:016754885a1521d9abc37b4a5c4f65f4dddb39d4f2eabae9c57e34753f04724c   | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/autoscaler-hpa:knative-v0.12.0
# docker push paihub/autoscaler-hpa:knative-v0.12.0
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/networking/istio@sha256:374017961e05a18bd6583bb2e3c147a045706fccbf29da064ea4ff251db88681   | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/istio:knative-v0.12.0
# docker push paihub/istio:knative-v0.12.0
# docker pull gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:8e606671215cc029683e8cd633ec5de9eabeaa6e9a4392ff289883304be1f418 | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/activator:knative-v0.11.1
# docker push paihub/activator:knative-v0.11.1
# docker pull gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler-hpa@sha256:5e0fadf574e66fb1c893806b5c5e5f19139cc476ebf1dff9860789fe4ac5f545 | grep "Digest:" | cut -f2 -d " " > container_digest
#  iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/autoscaler-hpa:knative-v0.11.1
# docker push paihub/autoscaler-hpa:knative-v0.11.1
# docker pull gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:ef1f01b5fb3886d4c488a219687aac72d28e72f808691132f658259e4e02bb27 | grep "Digest:" | cut -f2 -d " " > container_digest
#  iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/autoscaler:knative-v0.11.1
# docker push paihub/autoscaler:knative-v0.11.1 
# docker pull gcr.io/knative-releases/knative.dev/serving/cmd/networking/istio@sha256:727a623ccb17676fae8058cb1691207a9658a8d71bc7603d701e23b1a6037e6c | grep "Digest:" | cut -f2 -d " " > container_digest
#  iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/istio:knative-v0.11.1
# docker push paihub/istio:knative-v0.11.1  
# docker pull gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:1ef3328282f31704b5802c1136bd117e8598fd9f437df8209ca87366c5ce9fcb | grep "Digest:" | cut -f2 -d " " > container_digest
#  iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/webhook:knative-v0.11.1
# docker push paihub/webhook:knative-v0.11.1 
# docker pull gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:5ca13e5b3ce5e2819c4567b75c0984650a57272ece44bc1dabf930f9fe1e19a1 | grep "Digest:" | cut -f2 -d " " > container_digest
#  iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/controller:knative-v0.11.1
# docker push paihub/controller:knative-v0.11.1
#docker pull gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:792f6945c7bc73a49a470a5b955c39c8bd174705743abf5fb71aa0f4c04128eb | grep "Digest:" | cut -f2 -d " " > container_digest
#iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
#echo $iid
#docker tag $iid paihub/queue:knative-v0.11.1
#docker push paihub/queue:knative-v0.11.1

#------------for the 0.4------------------
# docker pull  gcr.io/knative-releases/knative.dev/net-istio/cmd/controller@sha256:3f8db840f5b3778a842dbbf7e8bc9f2babd10b144b816c8497ac46430db8254e | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/controller:net-istio-knative-v0.15.0
# docker push paihub/controller:net-istio-knative-v0.15.0
# 
# docker pull  gcr.io/knative-releases/knative.dev/net-istio/cmd/webhook@sha256:b691c81d117d666d479b4f57416f3edd53f282a7346c64af4ce9c4585df5bec7 | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/webhook:net-istio-knative-v0.15.0
# docker push paihub/webhook::net-istio-knative-v0.15.0
# 
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:713bd548700bf7fe5452969611d1cc987051bd607d67a4e7623e140f06c209b2 | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/queue:knative-v0.15.0
# docker push paihub/queue:knative-v0.15.0
# 
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:a5de0fb75046f2ad29a9394b9f4f31d258c4abaea3529cf3443d69e2aab1a879 | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/activator:knative-v0.15.0
# docker push paihub/activator:knative-v0.15.0
# 
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:61fc208b9c7923228275f8792288b3e356b2e80432655f237baafcf8ab7c3449 | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/autoscaler:knative-v0.15.0
# docker push paihub/autoscaler:knative-v0.15.0
# 
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:51d92a912852f6bdc62468c7c3932e90786217425421c6b9f5366f4724b39fba | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/controller:knative-v0.15.0
# docker push paihub/controller:knative-v0.15.0
# 
# 
# docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:bfb31793e70608a70a8e1c778b6183eba786bcd10491d84807d300accceb46b0 | grep "Digest:" | cut -f2 -d " " > container_digest
# iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
# echo $iid
# docker tag $iid paihub/webhook:knative-v0.15.0
# docker push paihub/webhook:knative-v0.15.0

# --------for the 0.4(kfserving)-----

gcr.io/kfserving/batcher:v0.4.0 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/batcher:kfserving-v0.4.0
docker push paihub/batcher:kfserving-v0.4.0

gcr.io/kfserving/alibi-explainer:v0.4.0 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/alibi-explainer:kfserving-v0.4.0
docker push paihub/alibi-explainer:kfserving-v0.4.0

gcr.io/kfserving/sklearnserver:v0.4.0 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/sklearnserver:kfserving-v0.4.0
docker push paihub/sklearnserver:kfserving-v0.4.0

gcr.io/kfserving/xgbserver:v0.4.0 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/xgbserver:kfserving-v0.4.0
docker push paihub/xgbserver:kfserving-v0.4.0

gcr.io/kfserving/pytorchserver:v0.4.0	 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/pytorchserver:kfserving-v0.4.0
docker push paihub/pytorchserver:kfserving-v0.4.0

gcr.io/kfserving/pytorchserver:v0.4.0-gpu | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/pytorchserver:kfserving-v0.4.0
docker push paihub/pytorchserver:kfserving-v0.4.0

nvcr.io/nvidia/tritonserver:20.03-py3 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/tritonserver:20.03-py3
docker push paihub/tritonserver:20.03-py3

gcr.io/kfserving/storage-initializer:v0.4.0 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/storage-initializer:kfserving-v0.4.0
docker push paihub/storage-initializer:kfserving-v0.4.0

gcr.io/kubebuilder/kube-rbac-proxy:v0.4.0 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/kube-rbac-proxy:kfserving-v0.4.0
docker push paihub/kube-rbac-proxy:kfserving-v0.4.0

gcr.io/kfserving/kfserving-controller:v0.4.0 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/kfserving-controller:kfserving-v0.4.0
docker push paihub/kfserving-controller:kfserving-v0.4.0







