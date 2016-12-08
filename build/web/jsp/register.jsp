<%-- 
    Document   : register
    Created on : Nov 15, 2016, 10:53:20 PM
    Author     : brass
--%>
<%--<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>--%>
<%--<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>--%>
<%--<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>--%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
        <meta charset="UTF-8"/>
        <title>ระบบขอสินเชื่อบ้าน</title>
    </head>
    <body>
        <!-- Main content -->
        <section class="content">
            <!-- Info boxes -->
            <div class="row">
                <div class="col-md-12">
                    <form class="form-horizontal" name="registerForm" action="registerAction.do" method="post" >
                        <!--<div align="center">-->
                        <div class="box box-solid" >
                            <br>
                            <strong class="text-center"> <h3>สมัครสมาชิก</h3></strong>
                            <div class="box-body">
                                <div class="row">
                                    <fieldset class="col-md-8 col-md-offset-1">
                                        <div class="col-lg-12">
                                            <h4> :: ข้อมูลส่วนตัว ::</h4>
                                            <hr/>
                                        </div>
                                        <!-- select -->

                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="citizen_id">เลขบัตรประจำตัวประชาชน <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8 ">
                                                <input class="form-control" type="text" name="citizen_id" maxlength="13" required="" placeholder="เลขบัตรประจำตัวประชาชน"><br>
                                            </div></div>
                                          <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="title_type">คำนำหน้า <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8 col-lg-4">
                                                <select class="form-control" name="title_type" >
                                                    <option>:: เลือก ::</option>
                                                    <option value="นาย">นาย</option>
                                                    <option value="นางสาว">นางสาว</option>
                                                    <option value="นาง">นาง</option>
                                                </select>
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="firstName">ชื่อ <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8 ">
                                                <input class="form-control" type="text" name="firstName" placeholder="ชื่อ">
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="lastName">นามสกุล <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8 ">
                                                <input class="form-control" type="text" name="lastName" placeholder="นามสกุล" >
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="birthdate">วันเดือนปีเกิด <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8 col-lg-4">
                                                <input class="form-control" type="date" name="birthdate" placeholder="วันเดือนปีเกิด">
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="age">อายุ <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8 col-lg-4">
                                                <input class="form-control" type="number" name="age" placeholder="อายุ">
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="statustype">สถานะสมรส <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8 col-lg-4">
                                                <select  name="statustype" class="form-control">
                                                    <option>:: เลือก ::</option>
                                                    <option value="โสด">โสด</option>
                                                    <option value="สมรส">สมรส</option>
                                                    <option value="หย่าหร้าง">หย่าหร้าง</option>
                                                </select>
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="mobile">เบอร์โทร <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8">
                                                <input class="form-control" type="text" name="mobile" maxlength="10" placeholder="เบอร์โทร">
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="email">อีเมล์ <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8 ">
                                                <input class="form-control" type="text" name="email" placeholder="อีเมล์">
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="addressregistration">ที่อยู่ตามทะเบียนบ้าน </label>
                                            <div class="col-md-8">
                                                <textarea class="form-control" name="addressregistration" placeholder="285/33 ซอยจรัญสนิทวงศ์31 ถนนจรัญสนิทวงศ์
                                                          แขวงบางขุนศรี เขตบางกอกน้อย
                                                          กรุงเทพ 10700"></textarea>
                                            </div></div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="addresscurrent">ที่อยู่ปัจจุบัน </label>
                                            <div class="col-md-8">
                                                <textarea class="form-control" name="addresscurrent" placeholder="285/33 ซอยจรัญสนิทวงศ์31 ถนนจรัญสนิทวงศ์
                                                          แขวงบางขุนศรี เขตบางกอกน้อย
                                                          กรุงเทพ 10700"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="addresssenddoc">ที่อยู่จัดส่งเอกสาร </label>
                                            <div class="col-md-8">
                                                <textarea class="form-control" name="addresssenddoc" placeholder="285/33 ซอยจรัญสนิทวงศ์31 ถนนจรัญสนิทวงศ์
                                                          แขวงบางขุนศรี เขตบางกอกน้อย
                                                          กรุงเทพ 10700"></textarea>
                                            </div>
                                        </div>
                                       
                                        <div class="col-lg-12">
                                             <br>
                                            <h4> :: ข้อมูลเข้าสู่ระบบ ::</h4>
                                            <hr/>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="username">ชื่อใช้เข้าสู่ระบบ <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8">
                                                <input class="form-control" type="text" name="username" placeholder="ชื่อเข้าสู่ระบบ">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="password">รหัสผ่าน <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8">
                                                <input  class="form-control"type="password" name="password" placeholder="รหัสผ่าน">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label class="col-md-4 control-label" for="cpassword">ยืนยันรหัสผ่าน <span class="require" style="color:red;">*</span></label>
                                            <div class="col-md-8">
                                                <input  class="form-control"type="password" name="cpassword" placeholder="ยืนยันรหัสผ่าน"><br>
                                            </div>
                                        </div>
                                        <input type="hidden" name="todo"/>
                                        <input type="hidden" name="roleId" value="2"/>
                                        <input type="hidden" name="status" value="1"/>
                                        <div align="center">
                                            <button type="submit" name="submit" class="btn btn-primary" onclick="insert('save')">บันทึก</button>
                                            <button name="reset" type="reset" class="btn btn-danger" >ยกเลิก</button>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <!--</div>-->
        </section><!-- /.content -->
        <script type="text/javascript">
            function insert(select) {
                document.registerForm.todo.value = select;
                //        document.registerForm.id;
                document.registerForm.submit();
            }
        </script>
    </body>
</html>
