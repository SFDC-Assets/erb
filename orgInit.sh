sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 5
sfdx force:source:push
sfdx force:user:password:generate

sfdx force:data:bulk:upsert -s Account -f data/accounts.csv -i External_Id__c -w 3
sfdx force:data:bulk:upsert -s Product2 -f data/products.csv -i External_Id__c -w 3
sfdx force:data:bulk:upsert -s Purchase_History__c -f data/purchase-history.csv -i External_Id__c -w 3

sfdx force:org:open
