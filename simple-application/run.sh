kubectl apply -f https://raw.githubusercontent.com/phucphungdev/gitops-cert-level-2-examples/main/app-of-apps/root-app/my-application.yml -n argocd

argocd app create external-app \
    --project default \
    --sync-policy auto \
    --repo https://github.com/codefresh-contrib/gitops-cert-level-2-examples.git \
    --path ./simple-application \
		--dest-name cluster-2 \
    --dest-namespace default

argocd app create internal-app \
    --project default \
    --sync-policy auto \
    --repo https://github.com/codefresh-contrib/gitops-cert-level-2-examples.git \
    --path ./simple-application \
		--dest-name in-cluster \
    --dest-namespace default
