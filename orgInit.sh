sfdx force:org:create -f config/project-scratch-def.json -s -a vol
sfdx force:source:push
sfdx force:user:permset:assign -n VolunteeringApp
sfdx force:data:tree:import -p data/masterImportPlan.json
sfdx force:apex:execute -f scripts/setup.cls
sddx force:org:open