$rg = 'enadoc-arm'
New-AzResourceGroup -Name $rg -Location southeastasia -Force

New-AzResourceGroupDeployment `
    -Name 'enadocarm' `
    -ResourceGroupName $rg `
    -TemplateFile 'azuredeploy.json' `
    -storageName1 'enadocarm' `
    -storageName2 'enadocarmmfp' `
    -storageSKU 'Standard_GRS'