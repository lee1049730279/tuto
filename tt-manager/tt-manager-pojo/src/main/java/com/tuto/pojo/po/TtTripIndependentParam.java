package com.tuto.pojo.po;

import java.util.Date;

public class TtTripIndependentParam {
    private Long id;

    private Long ttIndependentId;

    private Date created;

    private Date updated;

    private String paramData;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getTtIndependentId() {
        return ttIndependentId;
    }

    public void setTtIndependentId(Long ttIndependentId) {
        this.ttIndependentId = ttIndependentId;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date updated) {
        this.updated = updated;
    }

    public String getParamData() {
        return paramData;
    }

    public void setParamData(String paramData) {
        this.paramData = paramData == null ? null : paramData.trim();
    }
}