package com.allblue.modules.activiti.entity;

/**
 * @Date:2020/1/7
 */

public class MyProcessDefinition{
    private String id;
    private String key;
    private Integer version;
    private String deploymentId;
    private String description;
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public String getDeploymentId() {
        return deploymentId;
    }

    public void setDeploymentId(String deploymentId) {
        this.deploymentId = deploymentId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "MyProcessDefinition{" +
                "id='" + id + '\'' +
                ", key='" + key + '\'' +
                ", version=" + version +
                ", deploymentId='" + deploymentId + '\'' +
                ", description='" + description + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
