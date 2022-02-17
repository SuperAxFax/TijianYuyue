package com.entity.vo;

import com.entity.TijiantaocanEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 体检套餐
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-23 13:20:44
 */
public class TijiantaocanVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 分类
	 */
	
	private String fenlei;
		
	/**
	 * 套餐项目数
	 */
	
	private Integer taocanxiangmushu;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 可约人数
	 */
	
	private Integer keyuerenshu;
		
	/**
	 * 套餐价格
	 */
	
	private Integer taocanjiage;
		
	/**
	 * 体检地点
	 */
	
	private String tijiandidian;
		
	/**
	 * 注意事项
	 */
	
	private String zhuyishixiang;
		
	/**
	 * 体检内容
	 */
	
	private String tijianneirong;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：分类
	 */
	 
	public void setFenlei(String fenlei) {
		this.fenlei = fenlei;
	}
	
	/**
	 * 获取：分类
	 */
	public String getFenlei() {
		return fenlei;
	}
				
	
	/**
	 * 设置：套餐项目数
	 */
	 
	public void setTaocanxiangmushu(Integer taocanxiangmushu) {
		this.taocanxiangmushu = taocanxiangmushu;
	}
	
	/**
	 * 获取：套餐项目数
	 */
	public Integer getTaocanxiangmushu() {
		return taocanxiangmushu;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：可约人数
	 */
	 
	public void setKeyuerenshu(Integer keyuerenshu) {
		this.keyuerenshu = keyuerenshu;
	}
	
	/**
	 * 获取：可约人数
	 */
	public Integer getKeyuerenshu() {
		return keyuerenshu;
	}
				
	
	/**
	 * 设置：套餐价格
	 */
	 
	public void setTaocanjiage(Integer taocanjiage) {
		this.taocanjiage = taocanjiage;
	}
	
	/**
	 * 获取：套餐价格
	 */
	public Integer getTaocanjiage() {
		return taocanjiage;
	}
				
	
	/**
	 * 设置：体检地点
	 */
	 
	public void setTijiandidian(String tijiandidian) {
		this.tijiandidian = tijiandidian;
	}
	
	/**
	 * 获取：体检地点
	 */
	public String getTijiandidian() {
		return tijiandidian;
	}
				
	
	/**
	 * 设置：注意事项
	 */
	 
	public void setZhuyishixiang(String zhuyishixiang) {
		this.zhuyishixiang = zhuyishixiang;
	}
	
	/**
	 * 获取：注意事项
	 */
	public String getZhuyishixiang() {
		return zhuyishixiang;
	}
				
	
	/**
	 * 设置：体检内容
	 */
	 
	public void setTijianneirong(String tijianneirong) {
		this.tijianneirong = tijianneirong;
	}
	
	/**
	 * 获取：体检内容
	 */
	public String getTijianneirong() {
		return tijianneirong;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
