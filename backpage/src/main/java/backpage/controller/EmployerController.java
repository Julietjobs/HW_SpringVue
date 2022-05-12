package backpage.controller;

import backpage.service.EmployerService;
import backpage.entity.Employer;
import backpage.entity.vo.QueryEmpInfoResp;
import backpage.entity.vo.QueryEmpStateResp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EmployerController {

    @Autowired
    private EmployerService employerService;


    @GetMapping("/queryAllEmployeeInfo")
    public List<QueryEmpInfoResp> queryAllEmployeeInfo(){
        return employerService.queryAllEmployeeInfo();
    }

    @GetMapping("/queryEmpInfoById/{empId}")
    public Employer queryEmpInfoById(@PathVariable("empId") long empId) {
        return employerService.queryEmpInfoById(empId);
    }

    @GetMapping("/queryAllEmployerInfo")
    public List<QueryEmpInfoResp> queryAllEmployerInfo() {
        return employerService.queryAllEmployerInfo();
    }

    @GetMapping("login/{account}/{password}")
    public Employer login(@PathVariable("account") String account,@PathVariable("password") String password) {
        return employerService.login(account , password);
    }

    @PostMapping("/insertEmpInfo")
    public boolean insertEmpInfo(Employer employer) {
        return employerService.insertEmpInfo(employer);
    }

    @GetMapping("/queryEmpState")
    public List<QueryEmpStateResp> queryEmpState(){
        return employerService.queryEmpState();
    }

    @GetMapping("/queryEmpStateById/{empId}")
    public Integer queryEmpStateById(@PathVariable("empId") long empId) {
        return employerService.queryEmpStateById(empId);
    }

}
