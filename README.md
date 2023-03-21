kubectl create namespace wdi23-e2e
kubectl create namespace wdi23-test

issue with aks 1.25
https://learn.microsoft.com/en-us/answers/questions/1051970/aks-with-kubernetes-service-connection-returns-cou

sed dio zamiany path
sed -i 's/__USER_PAT__/123hdfa123hbdhj123hjb/g'

https://azuredevcollege.com/trainingdays/day7/challenges/image-pull-secret.html
az acr credential show -n wdi23acr --query passwords[0].value -o tsv

kubectl create secret docker-registry regcred --docker-server=wdi23acr.azurecr.io --docker-username=wdi23acr --docker-password=$ACR_PWD --docker-email=zajac.dawid.dev@gmail.com