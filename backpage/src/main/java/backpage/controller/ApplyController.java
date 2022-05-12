package backpage.controller;

import backpage.entity.vo.QueryApplyInfoResp;
import backpage.entity.vo.QueryApplyRecordResp;
import backpage.service.ApplyForVacationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;

@RestController
public class ApplyController {

    @Autowired
    private ApplyForVacationService applyForVacationService;

    @PostMapping("/applyVacation/{empId}/{startTime}/{duringTime}/{reason}/{type}")
    public boolean applyVacation(@PathVariable("empId") long empId, @PathVariable("startTime")@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date startTime, @PathVariable("duringTime") Integer duringTime, @PathVariable("reason") String reason, @PathVariable("type") Integer type){
        return applyForVacationService.applyForVacation(empId ,startTime, duringTime , reason , type );
    }

    @PostMapping("/checkApplyInfo/{applyId}/{state}")
    public boolean checkApplyInfo(@PathVariable("applyId") long applyId ,@PathVariable("state") Integer state){
        return applyForVacationService.updateApplyState(applyId , state);
    }

    @GetMapping("/getApplyRecordById/{empId}")
    public List<QueryApplyRecordResp> getApplyRecordById(@PathVariable("empId") long empId){
        return applyForVacationService.queryApplyByEmpId(empId);
    }

    @GetMapping("/getApplyInfoForEvent")
    public List<QueryApplyInfoResp> queryApplyByStateForEventManager(){
        return applyForVacationService.queryApplyByStateForEventManager();
    }

    @GetMapping("/getApplyInfoForBig")
    public List<QueryApplyInfoResp> queryApplyByStateForBigManager(){
        return applyForVacationService.queryApplyByStateForBigManager();
    }

    @GetMapping("/queryApplyingById/{empId}")
    List<QueryApplyInfoResp> queryApplyingById(@PathVariable("empId") long empId){
        return applyForVacationService.queryApplyingById(empId);
    }
}
