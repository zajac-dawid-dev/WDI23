kubectl create namespace e2e
kubectl create namespace test

issue with aks 1.25
https://learn.microsoft.com/en-us/answers/questions/1051970/aks-with-kubernetes-service-connection-returns-cou

sed dio zamiany path
sed -i 's/__USER_PAT__/123hdfa123hbdhj123hjb/g'

az aks update -n wdi23aks -g wdi23 --attach-acr wdi23acr

https://azuredevcollege.com/trainingdays/day7/challenges/image-pull-secret.html
az acr credential show -n wdi23acr --query passwords[0].value -o tsv

kubectl create secret docker-registry regcred --docker-server=wdi23acr.azurecr.io --docker-username=wdi23acr --docker-password=$ACR_PWD --docker-email=zajac.dawid.dev@gmail.com


az aks check-acr --resource-group wdi23 --name wdi23aks --acr wdi23acr.azurecr.io


https://www.youtube.com/watch?v=ULXhozeoH0U&t=478s


https://medium.com/bb-tutorials-and-thoughts/how-to-deploy-nodejs-apis-on-azure-aks-using-helm-8b37ab190d4e

https://www.youtube.com/watch?v=yhyTK0k-WkY



KV - resource connection -> kv access policy - list get