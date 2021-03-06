<%-- 
    Document   : AdminManagermantProfile
    Created on : Nov 23, 2016, 1:07:38 AM
    Author     : brass
--%>

<%@page import="java.util.*"%>
<%@page import="com.bean.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%!
            List<UserBean> regislist = new ArrayList<UserBean>();
            
        %>
        <section class="content">
            <!-- Info boxes -->
            <div class="row">
                <div class="col-md-12">

                    <form name="formshowdateuser" method="post" action="registerAction.do">
                        <section class="content-header">
                            <h1>
                                ข้อมูลลูกค้า
                                <small>ของระบบ</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-plus-square">
                                        </i>
                                        หน้าแรก
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="#">
                                        <i class="fa fa-plus-square">
                                        </i>
                                        จัดการผู้ใช้
                                    </a>
                                </li>
                            </ol>
                        </section>
                        <section class="content">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box">
                                        <div class="box-header">
                                            <h3 class="box-title"> ข้อมูลสมาชิก</h3>
                                        </div>
                                        <!--.box-header-->
                                        <div class="box-body">
                                            <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-responsive">
                                                <div class="row">
                                                    <div class="col-sm-6">
                                                        <div class="dataTables_length" id="example1_length">
                                                            <label>แสดง
                                                                <select name="example1_length" aria-controls="example1" class="form-control input-sm">
                                                                    <option value="10">10</option>
                                                                    <option value="10">25</option>
                                                                    <option value="10">50</option>
                                                                    <option value="10">100</option>
                                                                </select>รายการ</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <div id="example1_filter" class="dataTables_filter" align="right">
                                                            <label>
                                                                ค้นหา :
                                                                <input type="search" class="form-control input-sm" placeholder aria-controls="example1" >
                                                                <button class="btn btn-primary btn-sm" type="submit" ><i class="glyphicon glyphicon-search"></i></button>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-12">
                                                        <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                                            <thead>
                                                                <tr>
                                                                    <th class="sorting_asc" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" aria-sort="ascending"
                                                                        aria-label="Rendering engine: activate to sort column descending" style="width: 50px;">ลำดับ
                                                                    </th>
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" 
                                                                        colspan="1" aria-label="Browser: activate to sort column ascending" style="width: 100px;">ชื่อ-นามสกุล
                                                                    </th>
                                                                    <!--                                                        <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                                                                                aria-label="Platform(s): activate to sort column ascending" style="width: 93px;">สถานะสมรส
                                                                                                                            </th>-->
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="Platform(s): activate to sort column ascending" style="width: 90px;">เบอร์โทร
                                                                    </th>
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1"
                                                                        aria-label="Engine version: activate to sort column ascending" style="width: 60px;">อีเมล์
                                                                    </th>
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="CSS grade: activate to sort column ascending" style="width: 100px;">ที่อยู่
                                                                    </th>
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="CSS grade: activate to sort column ascending" style="width: 40px;">ลบ
                                                                    </th>
<!--                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="CSS grade: activate to sort column ascending" style="width: 40px;">แก้ไข
                                                                    </th>-->
                                                                    <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1" colspan="1" 
                                                                        aria-label="CSS grade: activate to sort column ascending" style="width: 40px;">รายละเอียด
                                                                    </th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <% regislist = (List<UserBean>) request.getSession().getAttribute("regisList");
                                                                    for (UserBean bean : regislist) {
                                                                %>
                                                                <tr role="row" class="odd">
                                                                    <td class="sorting_1"><%=bean.getUser_id()%></td>
                                                                    <td class="sorting_1"><%=bean.getTitle_type()%> &nbsp;<%=bean.getFirstName()%>&nbsp;<%=bean.getLastName()%></td>
                                                                    <%----<td class="sorting_1"><%=bean.getStatustype()%></td>--%>
                                                                    <td class="sorting_1"><%=bean.getMobile()%></td>
                                                                    <td class="sorting_1"><%=bean.getEmail()%></td>
                                                                    <td class="sorting_1"><%=bean.getAddressregistration()%></td>
                                                                    <td class="sorting_1"><button class="btn btn-sm btn-danger" type="submit" value="ลบ" onclick="callActionGotoDelete(<%=bean.getUser_id()%>)"><i class="fa fa-close"></i></button></td>
                                                                    <%--<td class="sorting_1"><button class="btn btn-sm btn-success" type="submit" value="แก้ไข" onclick="callActionGotoEdit(<%=bean.getUser_id()%>)"><i class="glyphicon glyphicon-edit"></i></button></td>--%>
                                                                    <td class="sorting_1"><button class="btn btn-sm btn-primary" type="submit" value="รายละเอียด" onclick="callActionGotoDetle(<%=bean.getUser_id()%>)"><i class="glyphicon glyphicon-folder-open"></i></button></td>
                                                                </tr>
                                                                <%}%>
                                                            </tbody>
                                                            <tfoot>
                                                                <tr>
                                                                    <th>ลำดับ</th>
                                                                    <th>ชื่อ-นามสกุล</th>
                                                                    <th>เบอร์โทร</th>
                                                                    <th>อีเมล์</th>
                                                                    <th>ที่อยู่</th>
                                                                    <th>ลบ</th>
                                                                    <!--<th>แก้ไข</th>-->
                                                                    <th>รายละเอียด</th>

                                                                </tr>
                                                            </tfoot>
                                                        </table>
                                                        <div class="row">
                                                            <div class="col-sm-5">
                                                                <div class="dataTables_info" id="example1_info" role="status"
                                                                     aria-live="polite">แสดง 1 ถึง 10 ของ รายการ 
                                                                </div>
                                                            </div>
                                                            <div class="col-sm-7">
                                                                <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate" align="right">
                                                                    <ul class="pagination" >
                                                                        <li class="paginate_button previous disabled" id="example1_previous">
                                                                            <a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">ก่อน</a>
                                                                        </li>
                                                                        <li class="paginate_button active">
                                                                            <a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a>
                                                                        </li>
                                                                        <li class="paginate_button ">
                                                                            <a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a>
                                                                        </li>
                                                                        <li class="paginate_button">
                                                                            <a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <input type="hidden" name="todo"/>
                        <input type="hidden" name="user_id"/>
                    </form>
                </div>
            </div>
        </section>
    </body>
    <script type="text/javascript">
    function callActionGotoDelete(user_id) {
//        alert(คุณต้องการลบขอ้มูลใช่หรือไม่);
        document.formshowdateuser.user_id.value = user_id;
        document.formshowdateuser.todo.value = 'delete';
        document.formshowdateuser.submit();
    }
    function callActionGotoDetle(user_id){
        document.formshowdateuser.user_id.value = user_id;
        document.formshowdateuser.todo.value = 'Detle';
        document.formshowdateuser.submit();
       
    }
    function callActionGotoEdit(user_id){
        document.formshowdateuser.user_id.value = user_id;
        document.formshowdateuser.todo.value = 'gotoEdit';
        document.formshowdateuser.submit();
        }
    function callActionGotosearch(select) {
        document.formshowdateuser.todo.value = select;
        document.formshowdateuser.submit();
    }
    
    </script>
</html>
