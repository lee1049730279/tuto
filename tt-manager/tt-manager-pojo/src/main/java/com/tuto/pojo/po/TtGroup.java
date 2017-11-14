package com.tuto.pojo.po;

public class TtGroup {
    private Integer id;

    private String name;

    private Integer parentId;

    private Integer isParnet;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getIsParnet() {
        return isParnet;
    }

    public void setIsParnet(Integer isParnet) {
        this.isParnet = isParnet;
    }
}