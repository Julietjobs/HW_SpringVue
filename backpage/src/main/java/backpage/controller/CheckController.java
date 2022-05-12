package backpage.controller;

import backpage.service.CheckInOutService;
import backpage.entity.LeftVacation;
import backpage.entity.vo.QueryCheckRecordResp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class CheckController {

    @Autowired
    private CheckInOutService checkInOutService;

    @PostMapping("/checkInOrOut/{empId}/{signType}")
    public boolean checkInOrOut(@PathVariable("empId") long empId ,@PathVariable("signType")  int signType){
        return checkInOutService.signInOrOut(empId , signType);
    }

    @GetMapping("/queryAllRecords")
    public List<QueryCheckRecordResp> queryAllSignRecord(){
        return checkInOutService.queryAllSignRecord();
    }

    @GetMapping("/queryRecordsByActOrType")
    public List<QueryCheckRecordResp> queryRecordsByActOrType(String account, Integer type){
        return checkInOutService.querySignRecordByAccountOrType(account , type);
    }

    @GetMapping("/getLeftTimeById/{id}")
    public LeftVacation getLeftTimeById(@PathVariable("id") long empId){
        return checkInOutService.queryLeftTimeByEmpId(empId);
    }
}
