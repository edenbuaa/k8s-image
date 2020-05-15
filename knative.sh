docker login

docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:3932262d4a44284f142f4c49f707526e70dd86317163a88a8cbb6de035a401a9  | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/queue:knative-v0.12.0
docker push paihub/autoscaler:knative-v0.12.0

docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/activator@sha256:e9b96a4839e9a59389050dca381c52f4d3a84fa4a8683161c29b450277283d66  | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/activator:knative-v0.12.0
docker push paihub/activator:knative-v0.12.0


docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler@sha256:fa0d5fda9d1eb6afde9b3f9523ca2e096c7fb8e733a47d424dda208b1f1585f7  | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/autoscaler:knative-v0.12.0
docker push paihub/autoscaler:knative-v0.12.0


docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/controller@sha256:a7358e4600ae00bf976dba9c299c3dcd7bd0473e18ff334dde35ba0f6535663b   | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/autoscaler:knative-v0.12.0
docker push paihub/autoscaler:knative-v0.12.0

docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/webhook@sha256:4528b0a54dd4ec91f0398856216b24532566618340c7ef6fd00345b776fb2c10   | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/webhook:knative-v0.12.0
docker push paihub/autoscaler:knative-v0.12.0

docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/autoscaler-hpa@sha256:016754885a1521d9abc37b4a5c4f65f4dddb39d4f2eabae9c57e34753f04724c   | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/autoscaler-hpa:knative-v0.12.0
docker push paihub/autoscaler:knative-v0.12.0

docker pull  gcr.io/knative-releases/knative.dev/serving/cmd/networking/istio@sha256:374017961e05a18bd6583bb2e3c147a045706fccbf29da064ea4ff251db88681   | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
docker tag $iid paihub/istio:knative-v0.12.0
docker push paihub/autoscaler:knative-v0.12.0

