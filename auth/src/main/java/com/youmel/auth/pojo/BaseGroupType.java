package com.youmel.auth.pojo;

public class BaseGroupType {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.id
     *
     * @mbggenerated
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.t_name
     *
     * @mbggenerated
     */
    private String tName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.t_description
     *
     * @mbggenerated
     */
    private String tDescription;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.crt_time
     *
     * @mbggenerated
     */
    private Integer crtTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.crt_uid
     *
     * @mbggenerated
     */
    private Integer crtUid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.crt_host
     *
     * @mbggenerated
     */
    private String crtHost;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.upd_time
     *
     * @mbggenerated
     */
    private Integer updTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.upd_uid
     *
     * @mbggenerated
     */
    private Integer updUid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.upd_host
     *
     * @mbggenerated
     */
    private String updHost;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.attr1
     *
     * @mbggenerated
     */
    private String attr1;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.attr2
     *
     * @mbggenerated
     */
    private String attr2;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column base_group_type.attr3
     *
     * @mbggenerated
     */
    private String attr3;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_group_type
     *
     * @mbggenerated
     */
    public BaseGroupType(Integer id, String tName, String tDescription, Integer crtTime, Integer crtUid, String crtHost, Integer updTime, Integer updUid, String updHost, String attr1, String attr2, String attr3) {
        this.id = id;
        this.tName = tName;
        this.tDescription = tDescription;
        this.crtTime = crtTime;
        this.crtUid = crtUid;
        this.crtHost = crtHost;
        this.updTime = updTime;
        this.updUid = updUid;
        this.updHost = updHost;
        this.attr1 = attr1;
        this.attr2 = attr2;
        this.attr3 = attr3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_group_type
     *
     * @mbggenerated
     */
    public BaseGroupType() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.id
     *
     * @return the value of base_group_type.id
     *
     * @mbggenerated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.id
     *
     * @param id the value for base_group_type.id
     *
     * @mbggenerated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.t_name
     *
     * @return the value of base_group_type.t_name
     *
     * @mbggenerated
     */
    public String gettName() {
        return tName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.t_name
     *
     * @param tName the value for base_group_type.t_name
     *
     * @mbggenerated
     */
    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.t_description
     *
     * @return the value of base_group_type.t_description
     *
     * @mbggenerated
     */
    public String gettDescription() {
        return tDescription;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.t_description
     *
     * @param tDescription the value for base_group_type.t_description
     *
     * @mbggenerated
     */
    public void settDescription(String tDescription) {
        this.tDescription = tDescription == null ? null : tDescription.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.crt_time
     *
     * @return the value of base_group_type.crt_time
     *
     * @mbggenerated
     */
    public Integer getCrtTime() {
        return crtTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.crt_time
     *
     * @param crtTime the value for base_group_type.crt_time
     *
     * @mbggenerated
     */
    public void setCrtTime(Integer crtTime) {
        this.crtTime = crtTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.crt_uid
     *
     * @return the value of base_group_type.crt_uid
     *
     * @mbggenerated
     */
    public Integer getCrtUid() {
        return crtUid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.crt_uid
     *
     * @param crtUid the value for base_group_type.crt_uid
     *
     * @mbggenerated
     */
    public void setCrtUid(Integer crtUid) {
        this.crtUid = crtUid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.crt_host
     *
     * @return the value of base_group_type.crt_host
     *
     * @mbggenerated
     */
    public String getCrtHost() {
        return crtHost;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.crt_host
     *
     * @param crtHost the value for base_group_type.crt_host
     *
     * @mbggenerated
     */
    public void setCrtHost(String crtHost) {
        this.crtHost = crtHost == null ? null : crtHost.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.upd_time
     *
     * @return the value of base_group_type.upd_time
     *
     * @mbggenerated
     */
    public Integer getUpdTime() {
        return updTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.upd_time
     *
     * @param updTime the value for base_group_type.upd_time
     *
     * @mbggenerated
     */
    public void setUpdTime(Integer updTime) {
        this.updTime = updTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.upd_uid
     *
     * @return the value of base_group_type.upd_uid
     *
     * @mbggenerated
     */
    public Integer getUpdUid() {
        return updUid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.upd_uid
     *
     * @param updUid the value for base_group_type.upd_uid
     *
     * @mbggenerated
     */
    public void setUpdUid(Integer updUid) {
        this.updUid = updUid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.upd_host
     *
     * @return the value of base_group_type.upd_host
     *
     * @mbggenerated
     */
    public String getUpdHost() {
        return updHost;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.upd_host
     *
     * @param updHost the value for base_group_type.upd_host
     *
     * @mbggenerated
     */
    public void setUpdHost(String updHost) {
        this.updHost = updHost == null ? null : updHost.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.attr1
     *
     * @return the value of base_group_type.attr1
     *
     * @mbggenerated
     */
    public String getAttr1() {
        return attr1;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.attr1
     *
     * @param attr1 the value for base_group_type.attr1
     *
     * @mbggenerated
     */
    public void setAttr1(String attr1) {
        this.attr1 = attr1 == null ? null : attr1.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.attr2
     *
     * @return the value of base_group_type.attr2
     *
     * @mbggenerated
     */
    public String getAttr2() {
        return attr2;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.attr2
     *
     * @param attr2 the value for base_group_type.attr2
     *
     * @mbggenerated
     */
    public void setAttr2(String attr2) {
        this.attr2 = attr2 == null ? null : attr2.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column base_group_type.attr3
     *
     * @return the value of base_group_type.attr3
     *
     * @mbggenerated
     */
    public String getAttr3() {
        return attr3;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column base_group_type.attr3
     *
     * @param attr3 the value for base_group_type.attr3
     *
     * @mbggenerated
     */
    public void setAttr3(String attr3) {
        this.attr3 = attr3 == null ? null : attr3.trim();
    }
}