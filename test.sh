docker pull gcr.io/knative-releases/knative.dev/serving/cmd/queue@sha256:3932262d4a44284f142f4c49f707526e70dd86317163a88a8cbb6de035a401a9 | grep "Digest:" | cut -f2 -d " " > container_digest
iid=`docker images --digests | grep $(cat container_digest) | sed -Ee 's/\s+/ /g' | cut -f4 -d " "`
echo $iid
