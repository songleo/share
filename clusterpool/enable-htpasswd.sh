#!/bin/bash

if [ $# -ne 2 ]
then
    echo "$0 user_name password"
    exit 1
fi

htpasswd -c -B -b admin.htpasswd $1 $2
oc create secret generic htpass-user-admin --from-file=htpasswd=./admin.htpasswd -n openshift-config
cat <<EOF | oc apply -f -
apiVersion: config.openshift.io/v1
kind: OAuth
metadata:
  name: cluster
spec:
  identityProviders:
  - name: htpasswd_provider
    mappingMethod: claim
    type: HTPasswd
    htpasswd:
      fileData:
        name: htpass-user-admin
EOF

rm -rf ./admin.htpasswd

cat <<EOF | oc apply -f -
apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: htpasswd-admin-crb
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: User
  name: admin
  apiGroup: rbac.authorization.k8s.io
EOF
