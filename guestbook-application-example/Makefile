CLUSTER?=eks3
APP?=guestbook

getAll:
	kubectl get nodes
	@echo "\n"
	kubectl get deployments
	@echo "\n"
	kubectl get pods -o wide
	@echo "\n"
	kubectl get services -o wide
	@echo "\n"

deployYaml:
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/examples/master/guestbook-go/redis-master-controller.json
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/examples/master/guestbook-go/redis-master-service.json
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/examples/master/guestbook-go/redis-slave-controller.json
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/examples/master/guestbook-go/redis-slave-service.json
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/examples/master/guestbook-go/guestbook-controller.json
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/examples/master/guestbook-go/guestbook-service.json
getServicesWide:
	kubectl get services -o wide

deleteSolution:
	kubectl delete rc/redis-master rc/redis-slave rc/guestbook svc/redis-master svc/redis-slave svc/guestbook
