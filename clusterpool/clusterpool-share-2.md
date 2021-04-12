## 快速登录到clusterpool集群

```
$ alias loginclusterpool="unset KUBECONFIG && echo y | oc login --token=$OCP_SA_TOKEN --server=https://api.collective.aws.red-chesterfield.com:6443"
$ loginclusterpool
Logged into "https://api.collective.aws.red-chesterfield.com:6443" as "system:serviceaccount:acm-observability-china:songleo-sa" using the token provided.

You have one project on this server: "acm-observability-china"

Using project "acm-observability-china".
$ oc get clusterpool
NAME                 READY   SIZE   BASEDOMAIN                   IMAGESET
obs-china-aws-4616   2       2      dev05.red-chesterfield.com   img4.6.16-x86-64-appsub
```

## 创建新的cluster或者获取已经存在的cluster

```
$ getcluster demo
create a new clusterclaim demo
clusterclaim.hive.openshift.io/demo created
run 'export KUBECONFIG=/tmp/ssli-kubeconfig' to access your cluster
$ getcluster demo
run 'export KUBECONFIG=/tmp/ssli-kubeconfig' to access your cluster
$ export KUBECONFIG=/tmp/ssli-kubeconfig
$ oc get no
NAME                           STATUS                        ROLES    AGE   VERSION
ip-10-0-129-53.ec2.internal    Ready                         master   11h   v1.19.0+e49167a
ip-10-0-132-153.ec2.internal   Ready                         worker   11h   v1.19.0+e49167a
ip-10-0-145-219.ec2.internal   Ready                         worker   11h   v1.19.0+e49167a
ip-10-0-146-151.ec2.internal   NotReady,SchedulingDisabled   master   11h   v1.19.0+e49167a
ip-10-0-169-221.ec2.internal   NotReady,SchedulingDisabled   worker   11h   v1.19.0+e49167a
ip-10-0-175-108.ec2.internal   Ready                         master   11h   v1.19.0+e49167a
```

## 登录到集群

```
$ logincluster demo
Login successful.

You have access to 58 projects, the list has been suppressed. You can list all projects with ' projects'

Using project "default".
$ oc get no
NAME                           STATUS                     ROLES    AGE   VERSION
ip-10-0-129-53.ec2.internal    Ready                      master   11h   v1.19.0+e49167a
ip-10-0-132-153.ec2.internal   Ready,SchedulingDisabled   worker   11h   v1.19.0+e49167a
ip-10-0-145-219.ec2.internal   Ready                      worker   11h   v1.19.0+e49167a
ip-10-0-146-151.ec2.internal   Ready                      master   11h   v1.19.0+e49167a
ip-10-0-169-221.ec2.internal   Ready                      worker   11h   v1.19.0+e49167a
ip-10-0-175-108.ec2.internal   Ready,SchedulingDisabled   master   11h   v1.19.0+e49167a
$ oc cluster-info
Kubernetes master is running at https://api.obs-china-aws-4616-wlmd5.dev05.red-chesterfield.com:6443

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
```

## 获取kubeadmin的password

```
$ getadminpasswd demo
dTgkY-B5VtJ-2FdMU-TcwuS
https://console-openshift-console.apps.obs-china-aws-4616-zp5fb.dev05.red-chesterfield.com
```

## 删除cluster

```
$ rmcluster demo
clusterclaim.hive.openshift.io "demo" deleted
```
