for i in *.yaml; do kubectl apply -n tip -f "$i"; done