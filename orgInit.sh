sfdx shane:org:create -f config/project-scratch-def.json -d 3 -s --userprefix einstein -o recommender.workshop
sfdx force:source:push
sfdx shane:user:password:set -g User -l User -p salesforce1

sfdx automig:load -d ./automig
# sfdx force:data:bulk:upsert -s Account -f data/accounts.csv -i External_Id__c -w 3
# sfdx force:data:bulk:upsert -s Product2 -f data/products.csv -i External_Id__c -w 3
# sfdx force:data:bulk:upsert -s Purchase_History__c -f data/purchase-history.csv -i External_Id__c -w 10
sfdx force:org:open

