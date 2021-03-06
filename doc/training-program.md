# Training Program for CKAD and CKA Exams

This is the training program to follow to improve your Kubernetes skills.   
Try always to `Create`, `Edit` and `Delete` Resources in **Imperative** and **Declarative** way.

### Core Concepts [:memo: (Exercises)](exercises/core.md)
- [Pod](https://kubernetes.io/docs/concepts/workloads/pods/)
- [ReplicaSet](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/)
- [Deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [Services](https://kubernetes.io/fr/docs/concepts/services-networking/service/)
- [Namespaces](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)
- [Horizontal Pod Autoscaler](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/)

### Configuration [:memo: (Exercises)](exercises/configuration.md)
- [ConfigMaps](https://kubernetes.io/docs/concepts/configuration/configmap/)
- [Secrets](https://kubernetes.io/docs/concepts/configuration/secret/)
- [Configure Service Accounts for Pods](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)

### Data Persistence & State [:memo: (Exercises)](exercises/persistence.md)
- [Volumes](https://kubernetes.io/docs/concepts/storage/volumes/)
- [Persistent Volumes & Claims](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)
- [Storage Classes](https://kubernetes.io/docs/concepts/storage/storage-classes/)
- [StatefulSets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/)
- [Headless Services](https://kubernetes.io/docs/concepts/services-networking/service/#headless-services)

### Scheduling [:memo: (Exercises)](exercises/scheduling.md)
- [Labels and Selectors](https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/)
- [Taints and toleration](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/)
- [Assigning Pods to Nodes (Node Selectors and Affinity)](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/)
- [Managing Resources for Containers](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)
- [DaemonSet](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
- [Create static Pods](https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/)
- [Configure Multiple Schedulers](https://kubernetes.io/docs/tasks/extend-kubernetes/configure-multiple-schedulers/)

### Networking [:memo: (Exercises)](exercises/networking.md)
- [Network Policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/)
- [Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/)

### Logging & Monitoring [:memo: (Exercises)](exercises/logging-monitoring.md)
- [Logging](https://kubernetes.io/docs/concepts/cluster-administration/logging/)
- [Monitoring](https://kubernetes.io/docs/tasks/debug-application-cluster/)

### Mutli-Container PODs [:memo: (Exercises)](exercises/multi-container.md)
- [Mutli-Container PODs](https://kubernetes.io/docs/concepts/workloads/pods/#how-pods-manage-multiple-containers)

### Observability [:memo: (Exercises)](exercises/observability.md)
- [Configure Liveness, Readiness and Startup Probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/)

### POD Design & Application Lifecycle Management [:memo: (Exercises)](exercises/pod-design-app-lifecycle.md)
- [Performing a Rolling Update](https://kubernetes.io/docs/tutorials/kubernetes-basics/update/update-intro/)
- [Rollback](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#rolling-back-a-deployment)
- [Job](https://kubernetes.io/docs/concepts/workloads/controllers/job/)
- [CronJob](https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/)
- [Init Containers](https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)

### Cluster Maintenance [:memo: (Exercises)](exercises/cluster-maintenance.md)
- [Cluster Upgrade](https://kubernetes.io/docs/tasks/administer-cluster/kubeadm/kubeadm-upgrade/)

### Security [:memo: (Exercises)](exercises/security.md)
- [Authenticating](https://kubernetes.io/docs/reference/access-authn-authz/authentication/)
- [Certificate Management with kubeadm](https://kubernetes.io/docs/tasks/administer-cluster/kubeadm/kubeadm-certs/)
- [Manage TLS Certificates in a Cluster](https://kubernetes.io/docs/tasks/tls/managing-tls-in-a-cluster/)
- [Authorization](https://kubernetes.io/docs/reference/access-authn-authz/authorization/)
- [API Group](https://kubernetes.io/docs/concepts/overview/kubernetes-api/)
- [Using RBAC Authorization](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
- [Images](https://kubernetes.io/docs/concepts/containers/images/)
- [Configure a Security Context for a Pod or Container](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)
