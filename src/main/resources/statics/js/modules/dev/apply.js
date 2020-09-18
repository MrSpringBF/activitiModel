function registerFrom() {
    var validator = $("#myForm").data('bootstrapValidator')
    if (validator) {
        validator.destroy();
        $('#myForm').data('bootstrapValidator', null);
    }
    $('#myForm').bootstrapValidator({
        excluded: [":disabled"],
        fields: {
            content: {
                validators: {
                    notEmpty: {
                        message: '请假理由不能为空'
                    }
                }
            }
        }
    });
}

$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'dev/apply/list',
        datatype: "json",
        colModel: [
            {label: 'id', name: 'id', index: 'id', width: 50, key: true},
            {label: '请假人', name: 'chineseName', index: 'user_id', width: 80},
            {label: '请假理由', name: 'content', index: 'content', width: 80},
            {label: '开始日期', name: 'startDate', index: 'start_date', width: 80},
            {label: '结束日期', name: 'endDate', index: 'end_date', width: 80},
            {
                label: '状态', name: 'status', index: 'status', width: 80,
				formatter: function (cellvalue, options, row) {
                	switch (row.status) {
						case 1:{
							return '<span class="label label-default">进行中</span>';
						}
						case 2:{
							return '<span class="label label-success">已完成</span>';
						}
						case 3:{
							return '<span class="label label-danger">未通过</span>';
						}
					}
				}
            },
            {
                label: '操作', name: '', index: '', width: 80,
                formatter: function (cellvalue, options, row) {
                    if (row.status==1 ||row.status==2){
                        return "<a onclick=\"ShowImg('" + row.processInstanceId + "')\" class='label label-primary'>流程图</a> &nbsp;"
                    }else {
                        return "<a onclick=\"ShowImg('" + row.processInstanceId + "')\" class='label label-primary'>流程图</a> &nbsp;"+
                            "<a onclick=\"ReSubmit('" + row.id + "')\" class='label label-primary'>重新提交</a> &nbsp;"
                    }
                }
            }
        ],
        viewrecords: true,
        height: 385,
        rowNum: 10,
        rowList: [10, 30, 50],
        rownumbers: true,
        rownumWidth: 25,
        autowidth: true,
        multiselect: true,
        pager: "#jqGridPager",
        jsonReader: {
            root: "page.list",
            page: "page.currPage",
            total: "page.totalPage",
            records: "page.totalCount"
        },
        prmNames: {
            page: "page",
            rows: "limit",
            order: "order"
        },
        gridComplete: function () {
            //隐藏grid底部滚动条
            $("#jqGrid").closest(".ui-jqgrid-bdiv").css({"overflow-x": "hidden"});
        }
    });
    laydate.render({
        elem: '#startDate',
        done: function (value, date, endDate) {
            vm.sysApply.startDate = value;
        }
    });
    laydate.render({
        elem: '#endDate',
        done: function (value, date, endDate) {
            vm.sysApply.endDate = value;
        }
    });
});
function ReSubmit(id) {
    $("#id").val(id);
    vm.showList = false;
    vm.title = "重新提交";
}
function startProcess() {
    let startDate = $("#startDate").val();
    let endDate = $("#endDate").val();
    if (startDate>endDate){
        alert("开始日期必须小于结束日期");
        return;
    }
    let content = $("#content").val();
    let obj = {};
    obj.startDate = startDate;
    obj.endDate = endDate;
    obj.content = content;
    obj.id = $("#id").val();
    $.ajax({
        type: "POST",
        url: baseURL + "dev/apply/reApply",
        contentType: "application/json",
        data: JSON.stringify(obj),
        success: function (r) {
            alert('操作成功');
            vm.showList = true;
            vm.reload();
        }
    });
}
function ShowImg(processInstanceId) {
    vm.showList2=false;
    generateProcessImg(processInstanceId)
}
//生成流程图
function generateProcessImg(processInstanceId) {
    $.post("/act/generateProcessImg",{processInstanceId:processInstanceId},function (res) {
        $("#show").attr("src","data:image/png;base64,"+res.data);
    })
    layer.open({
        type: 1,
        offset: '50px',
        skin: 'layui-layer-molv',
        title: "查看流程图",
        area: ['1000px', '500px'],
        shade: 0.3,
        anim: 1,
        shadeClose: false,
        content: jQuery("#ImgLayer"),
        btn: ['确定', '取消'],
        btn1: function (index) {
            layer.close(index);
        }
    });
}
var vm = new Vue({
    el: '#rrapp',
    data: {
        isDisable: false,
        showList: true,
        showList2: true,
        title: null,
        sysApply: {
            startDate: null,
            endDate: null
        }
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function () {
            registerFrom();
            vm.showList = false;
            vm.title = "新增";
            vm.sysApply = {};
        },
        update: function (event) {
            var id = getSelectedRow();
            if (id == null) {
                return;
            }
            registerFrom();
            vm.showList = false;
            vm.title = "修改";

            vm.getInfo(id)
        },
        saveOrUpdate: function (event) {
            if (vm.sysApply.startDate > vm.sysApply.endDate) {
                alert("开始日期必须小于结束日期");
                return;
            }
            vm.isDisable = true;
            var bootstrapValidator = $("#myForm").data('bootstrapValidator');
            bootstrapValidator.validate();
            if (!bootstrapValidator.isValid()) {
                vm.isDisable = false;
                return;
            }
            var url = vm.sysApply.id == null ? "dev/apply/save" : "dev/apply/update";
            $.ajax({
                type: "POST",
                url: baseURL + url,
                contentType: "application/json",
                data: JSON.stringify(vm.sysApply),
                success: function (r) {
                    if (r.code === 0) {
                        alert('操作成功', function (index) {
                            vm.reload();
                        });
                    } else {
                        alert(r.msg);
                    }
                    vm.isDisable = false;
                }
            });
        },
        del: function (event) {
            var ids = getSelectedRows();
            if (ids == null) {
                return;
            }

            confirm('确定要删除选中的记录？', function () {
                $.ajax({
                    type: "POST",
                    url: baseURL + "dev/apply/delete",
                    contentType: "application/json",
                    data: JSON.stringify(ids),
                    success: function (r) {
                        if (r.code == 0) {
                            alert('操作成功', function (index) {
                                $("#jqGrid").trigger("reloadGrid");
                            });
                        } else {
                            alert(r.msg);
                        }
                    }
                });
            });
        },
        getInfo: function (id) {
            $.get(baseURL + "dev/apply/info/" + id, function (r) {
                vm.sysApply = r.sysApply;
            });
        },
        reload: function (event) {
            vm.showList = true;
            var page = $("#jqGrid").jqGrid('getGridParam', 'page');
            $("#jqGrid").jqGrid('setGridParam', {
                page: page
            }).trigger("reloadGrid");
        }
    }
});