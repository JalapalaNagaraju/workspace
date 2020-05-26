node{
git 'https://github.com/JalapalaNagaraju/workspace.git'
azureKeyVault(credentialID: 'sub10', keyVaultURL: 'https://sub10-kv.vault.azure.net/', secrets: [[envVariable: 'tf_password', name: 'tf-password', secretType: 'Secret', version: '1c01c905f8d349cca98c961700155f35'], [envVariable: 'tf_subscription', name: 'tf-subscription', secretType: 'Secret', version: '75950f57f3b24e589e4d547e47bb028d'], [envVariable: 'tf_client', name: 'tf-client', secretType: 'Secret', version: 'c26cde43e40548c0a347cd87865b3825'], [envVariable: 'tf_tenant', name: 'tf-tenant', secretType: 'Secret', version: 'aa5bdb09039148c68a12c8913eb5fa3e']]) {
   sh label: '', script: '''echo ARM_CLIENT_ID=${tf_client}
echo ARM_CLIENT_SECRET=${tf_password}
echo ARM_SUBSCRIPTION_ID=${tf_subscription}
echo ARM_TENANT_ID=${tf_tenant}
export ARM_CLIENT_ID=${tf_client}
export ARM_CLIENT_SECRET=${tf_password}
export ARM_SUBSCRIPTION_ID=${tf_subscription}
export ARM_TENANT_ID=${tf_tenant}
terraform init
terraform workspace select prod
terraform apply -var-file=prod.tfvars -auto-approve
'''
}
}