kubectl apply -f https://raw.githubusercontent.com/phucphungdev/gitops-cert-level-2-examples/main/app-of-apps/root-app/my-application.yml -n argocd

argocd app create my-application-sets \
    --project default \
    --sync-policy auto \
    --repo https://github.com/phucphungdev/gitops-cert-level-2-examples.git \
    --path ./application-sets/my-application-sets/ \
		--dest-name in-cluster \
    --dest-namespace default

argocd login kubernetes-vm:30443 --insecure --username admin --password 8YstmpVTT5laQbTv
argocd cluster add default --name cluster-2
argocd cluster add default --name cluster-3



