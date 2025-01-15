kubectl apply -f https://raw.githubusercontent.com/phucphungdev/gitops-cert-level-2-examples/main/app-of-apps/root-app/my-application.yml -n argocd

argocd app create my-application-sets \
    --project default \
    --sync-policy auto \
    --repo https://github.com/phucphungdev/gitops-cert-level-2-examples.git \
    --path ./application-sets/my-application-sets/ \
		--dest-name in-cluster \
    --dest-namespace default
