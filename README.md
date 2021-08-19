docker build -t dcodecamp-wheel-of-misfortune:v1 -f Dockerfile ../wheel-of-misfortune 

docker run -p 80:80 dcodecamp-wheel-of-misfortune:v1

terraform init
terraform plan
terraform apply
terraform destroy

kubectl apply -f deployment.yaml
