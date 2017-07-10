package com.administrate

import com.grails.Company
import com.grails.Module
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class AdminModuleController {
def springSecurityService
    def modulePage() {
        def currentUser = springSecurityService.currentUser
        def name=currentUser.getUsername()
        def userList = User.list()
        def com = Company.list()
        Company comp = new Company()
        for(User user: userList){
            if (user.getUsername().equals(name)) {
                String access = user.getAccessKey()
                String[] compName = access.split("_")
                for (Company company : com) {
                    if (company.getCompanyName().equals(compName[0]))
                        comp = company
                }
            }
        }
        Module module = new Module()
        def moduleList = Module.list()
        for(Module mod : moduleList){
            if(mod.getModuleName().equals(params.module)){
                module = mod
            }
        }
        render(view: 'module', model: [username: name, company: comp, module: module])
    }

    def delete(){

    }
}
