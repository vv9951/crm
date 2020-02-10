package com.huaxin.crm.customermgr.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.apache.ibatis.annotations.CacheNamespace;
import org.apache.ibatis.annotations.CacheNamespaceRef;

@Data
@TableName("tbl_customer")
public class Customer {

    @TableId(value = "uuid",type = IdType.AUTO)
    private int uuid;

    @TableField("customerId")
    private String customerId;

    @TableField("pwd")
    private String pwd;

    @TableField("showName")
    private String showName;

    @TableField("trueName")
    private String trueName;

    @TableField("registerTime")
    private String registerTime;

}
