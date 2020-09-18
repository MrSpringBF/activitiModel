function registerFrom() {
    var validator = $("#myForm").data('bootstrapValidator')
    if (validator) {
        validator.destroy();
        $('#myForm').data('bootstrapValidator', null);
    }
    $('#myForm').bootstrapValidator({
        excluded: [":disabled"],
        fields: {}
    });
}

$(function () {
    $("#jqGrid").jqGrid({
        url: baseURL + 'act/reprocdef/list',
        datatype: "json",
        colModel: [
            {label: 'id', name: 'id', index: 'ID_', width: 50, key: true},
            {label: '流程名称', name: 'name', index: 'NAME_', width: 80},
            {label: 'key', name: 'key', index: 'KEY_', width: 80},
            {label: '部署id', name: 'deploymentId', index: 'DEPLOYMENT_ID_', width: 80},
            {
                label: '操作', name: '', index: '', width: 80,
                formatter: function (cellvalue, options, row) {
                    return "<a onclick=\"toStart('" + row.id + "')\" class='label label-primary'>使用</a> &nbsp;"
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
        elem: '#startDate'
    });
    laydate.render({
        elem: '#endDate'
    });
});
function toStart(id) {
    $("#processDefId").val(id);
    vm.showList = false;
    vm.title = "新增";
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
    obj.processDefinitionId = $("#processDefId").val();
    $.ajax({
        type: "POST",
        url: baseURL + "dev/apply/save",
        contentType: "application/json",
        data: JSON.stringify(obj),
        success: function (r) {
            alert('操作成功');
            vm.showList = true;
        }
        });
}

var vm = new Vue({
    el: '#rrapp',
    data: {
        isDisable: false,
        showList: true,
        title: null,
        actReProcdef: {}
    },
    methods: {
        query: function () {
            vm.reload();
        },
        add: function () {
            registerFrom();
            vm.showList = false;
            vm.title = "新增";
            vm.actReProcdef = {};
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
            vm.isDisable = true;
            var bootstrapValidator = $("#myForm").data('bootstrapValidator');
            bootstrapValidator.validate();
            if (!bootstrapValidator.isValid()) {
                vm.isDisable = false;
                return;
            }
            var url = vm.actReProcdef.id == null ? "act/reprocdef/save" : "act/reprocdef/update";
            $.ajax({
                type: "POST",
                url: baseURL + url,
                contentType: "application/json",
                data: JSON.stringify(vm.actReProcdef),
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
                    url: baseURL + "act/reprocdef/delete",
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
            $.get(baseURL + "act/reprocdef/info/" + id, function (r) {
                vm.actReProcdef = r.actReProcdef;
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