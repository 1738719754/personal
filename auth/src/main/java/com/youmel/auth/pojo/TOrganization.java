package com.youmel.auth.pojo;

public class TOrganization {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.pid
     *
     * @mbggenerated
     */
    private Integer pid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.org_name
     *
     * @mbggenerated
     */
    private String orgName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.type
     *
     * @mbggenerated
     */
    private Integer type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.remarks
     *
     * @mbggenerated
     */
    private String remarks;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.upt_uid
     *
     * @mbggenerated
     */
    private Integer uptUid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.upt_time
     *
     * @mbggenerated
     */
    private Integer uptTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.crt_uid
     *
     * @mbggenerated
     */
    private Integer crtUid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.crt_time
     *
     * @mbggenerated
     */
    private Integer crtTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column t_organization.status
     *
     * @mbggenerated
     */
    private String status;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_organization
     *
     * @mbggenerated
     */
    public TOrganization(Integer id, Integer pid, String orgName, Integer type, String remarks, Integer uptUid, Integer uptTime, Integer crtUid, Integer crtTime, String status) {
        this.id = id;
        this.pid = pid;
        this.orgName = orgName;
        this.type = type;
        this.remarks = remarks;
        this.uptUid = uptUid;
        this.uptTime = uptTime;
        this.crtUid = crtUid;
        this.crtTime = crtTime;
        this.status = status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_organization
     *
     * @mbggenerated
     */
    public TOrganization() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.id
     *
     * @return the value of t_organization.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.id
     *
     * @param id the value for t_organization.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.pid
     *
     * @return the value of t_organization.pid
     *
     * @mbggenerated
     */
    public Integer getPid() {
        return pid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.pid
     *
     * @param pid the value for t_organization.pid
     *
     * @mbggenerated
     */
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.org_name
     *
     * @return the value of t_organization.org_name
     *
     * @mbggenerated
     */
    public String getOrgName() {
        return orgName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.org_name
     *
     * @param orgName the value for t_organization.org_name
     *
     * @mbggenerated
     */
    public void setOrgName(String orgName) {
        this.orgName = orgName == null ? null : orgName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.type
     *
     * @return the value of t_organization.type
     *
     * @mbggenerated
     */
    public Integer getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.type
     *
     * @param type the value for t_organization.type
     *
     * @mbggenerated
     */
    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.remarks
     *
     * @return the value of t_organization.remarks
     *
     * @mbggenerated
     */
    public String getRemarks() {
        return remarks;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.remarks
     *
     * @param remarks the value for t_organization.remarks
     *
     * @mbggenerated
     */
    public void setRemarks(String remarks) {
        this.remarks = remarks == null ? null : remarks.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.upt_uid
     *
     * @return the value of t_organization.upt_uid
     *
     * @mbggenerated
     */
    public Integer getUptUid() {
        return uptUid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.upt_uid
     *
     * @param uptUid the value for t_organization.upt_uid
     *
     * @mbggenerated
     */
    public void setUptUid(Integer uptUid) {
        this.uptUid = uptUid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.upt_time
     *
     * @return the value of t_organization.upt_time
     *
     * @mbggenerated
     */
    public Integer getUptTime() {
        return uptTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.upt_time
     *
     * @param uptTime the value for t_organization.upt_time
     *
     * @mbggenerated
     */
    public void setUptTime(Integer uptTime) {
        this.uptTime = uptTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.crt_uid
     *
     * @return the value of t_organization.crt_uid
     *
     * @mbggenerated
     */
    public Integer getCrtUid() {
        return crtUid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.crt_uid
     *
     * @param crtUid the value for t_organization.crt_uid
     *
     * @mbggenerated
     */
    public void setCrtUid(Integer crtUid) {
        this.crtUid = crtUid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.crt_time
     *
     * @return the value of t_organization.crt_time
     *
     * @mbggenerated
     */
    public Integer getCrtTime() {
        return crtTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.crt_time
     *
     * @param crtTime the value for t_organization.crt_time
     *
     * @mbggenerated
     */
    public void setCrtTime(Integer crtTime) {
        this.crtTime = crtTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column t_organization.status
     *
     * @return the value of t_organization.status
     *
     * @mbggenerated
     */
    public String getStatus() {
        return status;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column t_organization.status
     *
     * @param status the value for t_organization.status
     *
     * @mbggenerated
     */
    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }
}