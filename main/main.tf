provider "azurerm" {
    features{}
}

module "resource_group"{
    // If the repo is public/private
    # source = "git::https://github.com/Ade-user123/rgrepo-module.git"
   
    //using PAT token
    source   = "git::https://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@github.com/Ade-user123/rgrepo-module.git"
}  
module "storage_account"{
    // If the repo is public/Private
    # source = "git::https://github.com/Ade-user123/strepo-module.git"
    
    source  = "git::https://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@github.com/Ade-user123/strepo-module.git"
    depends_on = [module.resource_group]
    resource_group_name = module.resource_group.resource_group_name
    location = module.resource_group.resource_location_name
        
    }
   
 