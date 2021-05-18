## failure sets

- [P2][Sev2][Observability][Stable] Should have metrics which defined in custom metrics allowlist (metricslist/g0) +3
- P2][Sev2][Observability][Stable] Customize the replicas for thanos query (reconcile/g0) +3
```
INFO[2021-05-14T01:16:49Z]   /go/src/github.com/open-cluster-management/multicluster-observability-operator/observability-e2e-test/pkg/tests/observability_reconcile_test.go:135 
INFO[2021-05-14T01:16:49Z]                                              
INFO[2021-05-14T01:16:49Z]   Timed out after 600.000s.             
INFO[2021-05-14T01:16:49Z]   Expected success, but got an error:        
INFO[2021-05-14T01:16:49Z]       <*errors.errorString | 0xc0026458d0>: { 
INFO[2021-05-14T01:16:49Z]           s: "deployment observability-thanos-query should have 2 but got 3 ready replicas", 
INFO[2021-05-14T01:16:49Z]       }                                      
INFO[2021-05-14T01:16:49Z]       deployment observability-thanos-query should have 2 but got 3 ready replicas 
INFO[2021-05-14T01:16:49Z]                                              
INFO[2021-05-14T01:16:49Z]   /go/src/github.com/open-cluster-management/multicluster-observability-operator/observability-e2e-test/pkg/tests/observability_reconcile_test.go:167 
```
- [P1][Sev1][Observability][Stable] Should have metric data in grafana console (grafana/g0)
- [P2][Sev2][Observability][Stable] Should have no metrics after custom metrics allowlist deleted (metricslist/g0)
- [P2][Sev2][Observability] Modifying MCO cr to disable observabilityaddon (addon/g0) - [Stable] Should not have the expected MCO addon pods when disable observabilityaddon
- [Stable] Should have endpoint-operator and metrics-collector being deployed
- [P1][Sev1][Observability] Cannot enable observability service successfully
- [P2][Sev2][Observability][Stable] Modifying MCO CR for reconciling (reconcile/g0)
```
/go/src/github.com/open-cluster-management/observability-e2e-test/pkg/tests/observability_reconcile_test.go:50
Timed out after 600.000s.
Expected success, but got an error:
    <*errors.errorString | 0xc0024d1920>: {
        s: "statefulset observability-alertmanager should have 3 but got 1 ready replicas",
    }
    statefulset observability-alertmanager should have 3 but got 1 ready replicas
/go/src/github.com/open-cluster-management/observability-e2e-test/pkg/tests/observability_reconcile_test.go:89
```

- [P1][Sev1][Observability][Integration] Should have metrics collector pod restart if cert secret re-generated (certrenew/g0) [It] 
```
INFO[2021-05-14T11:29:02Z]   /go/src/github.com/open-cluster-management/observability-e2e-test/pkg/tests/observability_cert_renew_test.go:30 
INFO[2021-05-14T11:29:02Z]                                              
INFO[2021-05-14T11:29:02Z]   Timed out after 300.000s.             
INFO[2021-05-14T11:29:02Z]   Expected                                   
INFO[2021-05-14T11:29:02Z]       <bool>: false                          
INFO[2021-05-14T11:29:02Z]   to be true                             
INFO[2021-05-14T11:29:02Z]                                              
INFO[2021-05-14T11:29:02Z]   /go/src/github.com/open-cluster-management/observability-e2e-test/pkg/tests/observability_cert_renew_test.go:131 
```
- observability-thanos-store-shard-0 not ready

```
INFO[2021-04-30T07:39:04Z] I0430 07:13:53.620802    9067 mco_deploy.go:273] Error while retrieving statefulset observability-thanos-receive-default: statefulsets.apps "observability-thanos-receive-default" not found 
INFO[2021-04-30T07:39:04Z] STEP: Waiting for MCO ready status   
INFO[2021-04-30T07:39:04Z] Failure [1626.296 seconds]      
INFO[2021-04-30T07:39:04Z] [BeforeSuite] BeforeSuite       
INFO[2021-04-30T07:39:04Z] /go/src/github.com/open-cluster-management/multicluster-observability-operator/observability-e2e-test/pkg/tests/observability-e2e-test_suite_test.go:95 
INFO[2021-04-30T07:39:04Z]                                              
INFO[2021-04-30T07:39:04Z]   Timed out after 1500.000s.            
INFO[2021-04-30T07:39:04Z]   Expected success, but got an error:        
INFO[2021-04-30T07:39:04Z]       <*errors.errorString | 0xc000e777f0>: { 
INFO[2021-04-30T07:39:04Z]           s: "Statefulset observability-thanos-store-shard-0 should have 1 but got 0 ready replicas", 
INFO[2021-04-30T07:39:04Z]       }                                      
INFO[2021-04-30T07:39:04Z]       Statefulset observability-thanos-store-shard-0 should have 1 but got 0 ready replicas 
INFO[2021-04-30T07:39:04Z]                                              
INFO[2021-04-30T07:39:04Z]   /go/src/github.com/open-cluster-management/multicluster-observability-operator/observability-e2e-test/pkg/tests/observability_install_test.go:126 
INFO[2021-04-30T07:39:04Z]                                              
INFO[2021-04-30T07:39:04Z]   Full Stack Trace
```
- failed to update mco cr

```
INFO[2021-04-27T03:44:24Z] STEP: Check the api conversion is working as expected 
INFO[2021-04-27T03:44:24Z] STEP: Apply MCO instance of v1beta2  
INFO[2021-04-27T03:44:24Z] W0427 03:44:17.012658    8922 utils.go:477] MultiClusterObservability observability already exists, updating! 
INFO[2021-04-27T03:44:24Z] Failure [134.184 seconds]       
INFO[2021-04-27T03:44:24Z] [BeforeSuite] BeforeSuite       
INFO[2021-04-27T03:44:24Z] /go/src/github.com/open-cluster-management/grafana-dashboard-loader/observability-e2e-test/pkg/tests/observability-e2e-test_suite_test.go:95 
INFO[2021-04-27T03:44:24Z]                                              
INFO[2021-04-27T03:44:24Z]   Unexpected error:                     
INFO[2021-04-27T03:44:24Z]       <*errors.StatusError | 0xc000b921e0>: { 
INFO[2021-04-27T03:44:24Z]           ErrStatus: {                       
INFO[2021-04-27T03:44:24Z]               TypeMeta: {Kind: "Status", APIVersion: "v1"}, 
INFO[2021-04-27T03:44:24Z]               ListMeta: {                    
INFO[2021-04-27T03:44:24Z]                   SelfLink: "",              
INFO[2021-04-27T03:44:24Z]                   ResourceVersion: "",       
INFO[2021-04-27T03:44:24Z]                   Continue: "",              
INFO[2021-04-27T03:44:24Z]                   RemainingItemCount: nil,   
INFO[2021-04-27T03:44:24Z]               },                             
INFO[2021-04-27T03:44:24Z]               Status: "Failure",             
INFO[2021-04-27T03:44:24Z]               Message: "Operation cannot be fulfilled on multiclusterobservabilities.observability.open-cluster-management.io \"observability\": the object has been modified; please apply your changes to the latest version and try again", 
INFO[2021-04-27T03:44:24Z]               Reason: "Conflict",            
INFO[2021-04-27T03:44:24Z]               Details: {                     
INFO[2021-04-27T03:44:24Z]                   Name: "observability",     
INFO[2021-04-27T03:44:24Z]                   Group: "observability.open-cluster-management.io", 
INFO[2021-04-27T03:44:24Z]                   Kind: "multiclusterobservabilities", 
INFO[2021-04-27T03:44:24Z]                   UID: "",                   
INFO[2021-04-27T03:44:24Z]                   Causes: nil,               
INFO[2021-04-27T03:44:24Z]                   RetryAfterSeconds: 0,      
INFO[2021-04-27T03:44:24Z]               },                             
INFO[2021-04-27T03:44:24Z]               Code: 409,                     
INFO[2021-04-27T03:44:24Z]           },                                 
INFO[2021-04-27T03:44:24Z]       }                                      
INFO[2021-04-27T03:44:24Z]       Operation cannot be fulfilled on multiclusterobservabilities.observability.open-cluster-management.io "observability": the object has been modified; please apply your changes to the latest version and try again 
INFO[2021-04-27T03:44:24Z]   occurred                               
INFO[2021-04-27T03:44:24Z]                                              
INFO[2021-04-27T03:44:24Z]   /go/src/github.com/open-cluster-management/grafana-dashboard-loader/observability-e2e-test/pkg/tests/observability_install_test.go:105 
INFO[2021-04-27T03:44:24Z]                                              
INFO[2021-04-27T03:44:24Z]   Full Stack Trace                  
INFO[2021-04-27T03:44:24Z]   github.com/open-cluster-management/observability-e2e-test/pkg/tests.installMCO() 
INFO[2021-04-27T03:44:24Z]   	/go/src/github.com/open-cluster-management/grafana-dashboard-loader/observability-e2e-test/pkg/tests/observability_install_test.go:105 +0x1536
```
- failed to run deploy-spoke-operator

```
INFO[2021-04-29T02:26:00Z] time="2021-04-29T02:13:41Z" level=info msg="  Deployment \"open-cluster-management/klusterlet-registry-server\" successfully rolled out" 
INFO[2021-04-29T02:26:00Z] time="2021-04-29T02:13:41Z" level=info msg="Created CatalogSource: klusterlet-catalog" 
INFO[2021-04-29T02:26:00Z] time="2021-04-29T02:13:41Z" level=info msg="Created Subscription: klusterlet-v0-4-0-sub" 
INFO[2021-04-29T02:26:00Z] time="2021-04-29T02:13:44Z" level=fatal msg="Failed to run packagemanifests: error approving install plan: Operation cannot be fulfilled on installplans.operators.coreos.com \"install-7td5d\": the object has been modified; please apply your changes to the latest version and try again\n" 
INFO[2021-04-29T02:26:00Z] make[2]: *** [Makefile:153: deploy-spoke-operator] Error 1 
INFO[2021-04-29T02:26:00Z] make[2]: Leaving directory '/go/src/github.com/open-cluster-management/multicluster-observability-operator/observability-e2e-test/registration-operator' 
```


## enhancement

- do not need to run e2e when submit non-code related PR, for example, only update doc

- review all `Integration` test and move it to `Stable`
