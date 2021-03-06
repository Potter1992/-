package com.school.model;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;
/*
 * 审批人
 */
public class Student_apply extends Model<Student_apply> {
	public static final Student_apply me=new Student_apply();
	public List<Student_apply> findByLogin(String username,String password) {
		String sql = "select * from student_apply where s_no= ? && s_password = ? ";
		List<Student_apply> stulist =find(sql, username,
				password);
		return stulist;
	}
	public List<Student_apply> getCurrentStudent(String sno,String sPassword) {
		List<Student_apply> currentStu=find("select * from student_apply where s_no = ? && s_password=?",sno,sPassword );
		return currentStu;
	}
}
