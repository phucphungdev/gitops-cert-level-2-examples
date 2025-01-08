argocd app create my-favorite-apps \
    --project default \
    --sync-policy none \
    --repo https://github.com/codefresh-contrib/gitops-cert-level-2-examples.git \
    --path ./app-of-apps/my-app-list \
    --dest-server https://kubernetes.default.svc \
    --dest-namespace argocd

argocd app delete my-favorite-apps --cascade

kubectl apply -f https://raw.githubusercontent.com/phucphungdev/gitops-cert-level-2-examples/main/app-of-apps/root-app/my-application.yml -n argocd
