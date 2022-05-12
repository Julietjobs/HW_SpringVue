package backpage.entity.vo;

import lombok.Data;

@Data
public class QueryApplyRecordResp {

    private long applyRecordId;

    private Integer duringTime;

    private Integer type;

    private Integer state;

    private String account;

    private String name;

}
