<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<jsp:include page="css_js.jsp"></jsp:include>
<title>申请页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- <script type="text/javascript" src="js/autocomplete/autocomplete.js"></script> -->

<link>
<style>
input {
	margin-top: 10px;
}
</style>
</head>

<body>
	<div id="search-suggest" class="drop-menu" style="display: none;">
		<!-- display：none 让其不显示 -->
		<ul id="search-result">
			<li>jieguo1</li>
		</ul>
	</div>
	<form action="save" id="search-form" method="post">
		<div class="panel-body" style="padding: 40px;">
			<div class="">
				<div class="form-group">
					<div class="field field-icon-right">
						<input type="text" class="input" name="s_no" placeholder="学号" />
						<input type="text" class="input" name="s_name" placeholder="姓名" />
						<input type="password" class="input" name="s_password"
							placeholder="密码" /> <input type="radio" name="s_sex" value="男"
							checked="checked"> 男 <input type="radio" name="s_sex"
							value="女" style="margin-left: 20px"> 女<br> <a
							class="button input-file" href="javascript:void(0);"
							style="margin-top: 10px"> + 请选择签字上传 <input name="s_img"
							size="100"
							data-validate="required:请选择文件,regexp#.+.(jpg|jpeg|png|gif)$:只能上传jpg|gif|png格式文件"
							type="file" />
						</a> <br> <input type="text" value="1" name="c_id"
							hidden="hidden" class="学生">
					</div>
					<!-- id="academy" -->

					<select id="s_before_academy" class="input" name="s_before_academy">
						<c:forEach items="${list_academy}" var="academy">
							<option>${academy.academy_name}</option>
						</c:forEach>
					</select> <select id="s_after_academy" class="input" name="s_before_academy">
						<c:forEach items="${list_academy}" var="academy">
							<option>${academy.academy_name}</option>
						</c:forEach>
					</select> <select id="s_after_subject" class="input" name="s_before_academy">
						<c:forEach items="${list_subject}" var="subject">
							<option>${subject.zymc}</option>
						</c:forEach>
					</select> <select id="s_after_subject" class="input" name="s_before_academy">
						<c:forEach items="${list_subject}" var="subject">
							<option>${subject.zymc}</option>
						</c:forEach>
					</select>
					<!--  <input type="text" name="s_before_academy" class="input academy drop open" id="s_before_academy" 
                placeholder="请输入学院" onclick="getcomplete('#s_before_academy','getAcademy');"> -->
					<!-- <input type="text" class="input" name="s_after_academy"
						id="s_after_academy" placeholder="异动后学院"
						onclick="getcomplete1('#s_after_academy','getAcademy');" /> <input
						type="text" class="input" name="s_before_subject"
						id="s_before_subject" placeholder="异动前专业"
						onclick="getcomplete_subject('#s_before_subject','getSubject');" />
					<input type="text" class="input" name="s_after_subject"
						id="s_after_subject" placeholder="异动后专业"
						onclick="getcomplete_subject1('#s_after_subject','getSubject');" /> -->
					<input type="s_before_class" class="input" name="s_before_class"
						placeholder="异动前班级" /> <input type="s_after_class" class="input"
						name="s_after_class" placeholder="异动后班级" /> <input
						type="s_before_grade" class="input" name="s_before_grade"
						placeholder="异动前年级" /> <input type="s_after_grade" class="input"
						name="s_after_grade" placeholder="异动后年级" /> <input type="s_year"
						class="input" name="s_year" placeholder="学制" /> 异动前是否有学籍<input
						type="radio" name="s_before_status" value="有" checked="checked">
					有 <input type="radio" name="s_before_status" value="无"
						style="margin-left: 20px"> 无<br> 异动后是否有学籍<input
						type="radio" name="s_after_status" value="有" checked="checked">
					有 <input type="radio" name="s_after_status" value="无"
						style="margin-left: 20px"> 无<br> 学历前<input
						type="text" class="input" name="s_before_education"
						placeholder="学历前" /> 学历后<input type="text" class="input"
						name="s_after_education" placeholder="学历后" /> 异动前是否有注册<input
						type="radio" name="s_before_regist" value="有" checked="checked">
					有 <input type="radio" name="s_before_regist" value="无"
						style="margin-left: 20px"> 无<br> 异动后是否有注册<input
						type="radio" name="s_after_regist" value="有" checked="checked">
					有 <input type="radio" name="s_after_regist" value="无"
						style="margin-left: 20px"> 无<br> 异动前是否有在校<input
						type="radio" name="s_before_school" value="有" checked="checked">
					有 <input type="radio" name="s_before_school" value="无"
						style="margin-left: 20px"> 无<br> 异动后是否有在校<input
						type="radio" name="s_after_school" value="有" checked="checked">
					有 <input type="radio" name="s_after_school" value="无"
						style="margin-left: 20px"> 无<br> <input type="submit"
						value="提交申请" class="button radius-big text-green"
						style="margin-top: 20px; width: 100%">
				</div>
			</div>
		</div>

	</form>
	id: 学号:s_no 姓名:s_name 密码:s_password 性别:s_sex 签字图片s_img 异动类型:c_id
	异动前学院:s_before_academy 异动后学院s_after_academy 异动前专业:s_before_subject
	异动后专业s_after_subject 异动前班级s_before_class 异动后班级s_after_class
	异动前年级:s_before_grade 异动后年级s_after_grade 学制:s_year 专业代码(前后,根据学生所选专业定)
	s_before_subject_no s_after_subject_no 异动前是否有学籍s_before_status
	异动后是否有学籍s_after_status 学历(前后)s_before_education s_after_education
	是否注册(前后) s_before_regist s_after_regist 是否在校(前后) s_before_school
	s_after_school 异动时间s_changetime
</body>
</html>
