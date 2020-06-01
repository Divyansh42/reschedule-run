oc delete -f secret-triggers.yaml
oc delete -f role.yaml
oc delete -f triggerbinding.yaml
oc delete -f triggertemplate.yaml
oc delete -f github-eventlistener-interceptor.yaml
oc create -f secret-triggers.yaml
oc create -f role.yaml
oc create -f triggerbinding.yaml
oc create -f triggertemplate.yaml
oc create -f github-eventlistener-interceptor.yaml
oc expose svc el-github-listener-interceptor
echo "$(oc  get route el-github-listener-interceptor --template='http://{{.spec.host}}')"
